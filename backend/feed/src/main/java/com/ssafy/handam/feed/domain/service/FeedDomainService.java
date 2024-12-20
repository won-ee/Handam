package com.ssafy.handam.feed.domain.service;


import static com.ssafy.handam.feed.domain.entity.QLike.like;

import co.elastic.clients.elasticsearch.core.GetRequest;
import co.elastic.clients.elasticsearch.core.GetResponse;
import com.ssafy.handam.feed.application.dto.FeedPreviewDto;
import com.ssafy.handam.feed.application.dto.request.feed.FeedCreationServiceRequest;
import com.ssafy.handam.feed.domain.entity.Feed;
import com.ssafy.handam.feed.domain.entity.Like;
import com.ssafy.handam.feed.domain.repository.FeedRepository;
import com.ssafy.handam.feed.domain.repository.LikeRepository;
import com.ssafy.handam.feed.infrastructure.client.dto.UserDto;
import com.ssafy.handam.feed.infrastructure.elasticsearch.FeedDocument;
import com.ssafy.handam.feed.presentation.response.feed.RecommendedFeedsForUserResponse;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.elasticsearch.core.geo.GeoPoint;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class FeedDomainService {

    private final FeedRepository feedRepository;
    private final LikeRepository likeRepository;
    private final RedisTemplate<String, Object> redisTemplate;


    public Feed findById(Long id) {
        return findBy(id);
    }

    public int likeFeed(Long feedId, Long userId) {
        Feed feed = findBy(feedId);
        feed.incrementLikeCount();
        feedRepository.save(feed);
        Like like = Like.builder().feed(feed).userId(userId).build();
        likeRepository.save(like);
        return feed.getLikeCount();
    }

    public int unlikeFeed(Long feedId, Long userId) {
        Feed feed = findBy(feedId);
        feed.decrementLikeCount();
        feedRepository.save(feed);
        List<Like> like = likeRepository.findByFeedIdAndUserId(feedId, userId);
        if(like.isEmpty()){
            throw new IllegalArgumentException("Like not found");
        }
        likeRepository.delete(like.get(0));
        return feed.getLikeCount();
    }


    private Feed findBy(Long feedId) {
        return feedRepository.findById(feedId).orElseThrow(() -> new IllegalArgumentException("Feed not found"));
    }

    public List<Like> countUpLike(Long feedId) {
        return likeRepository.findByFeedId(feedId);
    }

    public List<Like> countDownLike(Long feedId) {
        return likeRepository.findByFeedId(feedId);
    }

    public List<Feed> getLikedFeedsByUser(Long userId, Pageable pageable) {
        Page<Like> likes = likeRepository.findByUserId(userId, pageable);
        if (likes == null || likes.isEmpty()) {
            return List.of();
        }

        List<Long> feedIds = likes.stream()
                .map(like -> like.getFeed().getId())
                .toList();

        return feedRepository.findByIdIn(feedIds);
    }


    public Page<Feed> getCreatedFeedsByUser(Long userId, Pageable pageable) {
        return feedRepository.findByUserId(userId, pageable);
    }

    public boolean isLikedFeed(Long feedId, Long userId) {
        return !likeRepository.findByFeedIdAndUserId(feedId, userId).isEmpty();
    }

    public Feed createFeed(FeedCreationServiceRequest request, String savedImagePath, UserDto userDto) {
        return feedRepository.save(Feed.builder()
                .placeName(request.placeName())
                .totalPlanId(request.totalPlanId())
                .title(request.title())
                .content(request.content())
                .imageUrl(savedImagePath)
                .address1(request.address1())
                .address2(request.address2())
                .longitude(request.longitude())
                .latitude(request.latitude())
                .placeType(request.placeType())
                .userId(request.userId())
                .build(),userDto);
    }

    public Page<FeedDocument> searchFeedsByKeywordSortedByLikeCount(String keyword, Pageable pageable) {
        return feedRepository.searchFeedsByKeywordSortedByLikeCount(keyword, pageable);
    }

    public Page<FeedDocument> getNearbyClusterCenter(
            Double latitude,
            Double longitude,
            String distance,
            Pageable pageable) {
        GeoPoint geoPoint = new GeoPoint(latitude, longitude);
        return feedRepository.getNearbyClusterCenter(geoPoint, distance, pageable);
    }


    //이상민 작업
    public RecommendedFeedsForUserResponse getRecommendedFeeds(List<Long> uniqueFeedIds, int currentPage) {
        // Elasticsearch에서 피드 데이터를 조회
        List<FeedPreviewDto> resultFeeds = getFeedsFromElasticsearch(uniqueFeedIds);

        // 페이지네이션 정보를 포함한 결과 반환
        boolean hasNextPage = (resultFeeds.size() == uniqueFeedIds.size());
        return RecommendedFeedsForUserResponse.of(resultFeeds, currentPage, hasNextPage);
    }

    private List<FeedPreviewDto> getFeedsFromElasticsearch(List<Long> feedIds) {
        List<FeedPreviewDto> feeds = new ArrayList<>();

        if (feedIds == null || feedIds.isEmpty()) {
            return feeds;
        }

        // Elasticsearch에서 feedId에 해당하는 FeedDocument 조회
        Iterable<FeedDocument> feedDocuments = feedRepository.findAllById(feedIds);

        // FeedDocument를 FeedPreviewDto로 변환
        for (FeedDocument feedDocument : feedDocuments) {
            feeds.add(FeedPreviewDto.fromDocument(feedDocument, false));
        }

        // 요청된 피드 ID와 일치하는 피드만 반환
        return feeds;
    }

    public Page<Like> getLikesBy(Long userId, Pageable pageable) {
        return likeRepository.findByUserId(userId, pageable);
    }

    public List<Feed> getFeedByIds(List<Long> feedIds) {
        return feedRepository.findByIdIn(feedIds);
    }

    public List<Feed> getFeedsByTotalPlanId(Long totalPlanId) { return feedRepository.findByTotalPlanId(totalPlanId); }

    public FeedDocument getFeedDocumentById(Long feedId) {
        return feedRepository.findFeedDocumentById(feedId).orElseThrow(() -> new IllegalArgumentException("Feed not found"));
    }

    public List<FeedDocument> getFeedDocumentsByIds(List<Long> feedIds) {
        Iterable<FeedDocument> allById = feedRepository.findAllById(feedIds);
        List<FeedDocument> feedDocuments = new ArrayList<>();
        allById.forEach(feedDocuments::add);
        return feedDocuments;
    }
}