package com.ssafy.handam.user.domain.service;

import com.ssafy.handam.user.domain.model.entity.Follow;
import com.ssafy.handam.user.domain.model.entity.User;
import com.ssafy.handam.user.domain.model.valueobject.FollowStatus;
import com.ssafy.handam.user.domain.model.valueobject.OAuthUserInfo;
import com.ssafy.handam.user.domain.model.valueobject.UserSurveyData;
import com.ssafy.handam.user.domain.repository.FollowRepository;
import com.ssafy.handam.user.domain.repository.UserRepository;
import com.ssafy.handam.user.presentation.response.UserInfoResponse;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Transactional
@RequiredArgsConstructor
@Service
public class UserService {
    private final UserRepository userRepository;
    private final FollowRepository followRepository;

    public User getUserById(Long userId){
        return userRepository.findById(userId).orElse(null);
    }
    public Long handleUserLogin(OAuthUserInfo oAuthUserInfo) {
        String email = oAuthUserInfo.email();
        Long userId;

        if (doesUserNotExist(email)) {
            userId = saveUser(oAuthUserInfo);
        } else {
            userId = getCurrentUserByEmail(email).getId();
        }
        return userId;
    }

    public User getCurrentUserByEmail(String email) {
        return userRepository.findByEmail(email)
                .orElseThrow(() -> new IllegalStateException("User not found with email: " + email));
    }
    public List<Follow> countByFollowing(Long followerId) {
        return followRepository.findByFollowerId(followerId);
    }
    public List<Follow> countByFollower(Long followingId) {
        return followRepository.findByFollowingId(followingId);
    }

    public void updateUserSurvey(String email, UserSurveyData surveyData) {

        User user = userRepository.findByEmail(email)
                .orElseThrow(() -> new IllegalStateException("User not found with email: " + email));

        user.updateUser(
                surveyData.nickname(),
                surveyData.residence(),
                surveyData.introduction(),
                surveyData.travelStyl1(),
                surveyData.travelStyl2(),
                surveyData.travelStyl3(),
                surveyData.travelStyl4()
        );

        userRepository.save(user);
    }
    public Optional<Follow> findFollowStatus(User follower, User following) {
        return followRepository.findByFollowerAndFollowing(follower, following);
    }
    public Long saveUser(OAuthUserInfo oAuthUserInfo) {
        User user = User.builder()
                .email((oAuthUserInfo.email()))
                .name(oAuthUserInfo.name())
                .gender(oAuthUserInfo.gender())
                .age(oAuthUserInfo.age())
                .profileImageUrl(oAuthUserInfo.profile_image())
                .build();

        User savedUser = userRepository.save(user);
        return savedUser.getId();
    }
    public UserInfoResponse findUserById(Long userId) {
        User user = userRepository.findById(userId)
                .orElseThrow(() -> new IllegalArgumentException("현재 사용자를 찾을 수 없습니다."));
        return UserInfoResponse.of(user,true);
    }
    public UserInfoResponse findUserWithFollowStatus(Long userId,Long targetUserId) {

        User currentUser = userRepository.findById(userId)
                .orElseThrow(() -> new IllegalArgumentException("현재 사용자를 찾을 수 없습니다."));

        User targetUser = userRepository.findById(targetUserId)
                .orElseThrow(() -> new IllegalArgumentException("해당 사용자를 찾을 수 없습니다. ID: " + targetUserId));

        boolean isFollowing = followRepository.findByFollowerAndFollowing(currentUser, targetUser).isPresent();

        return UserInfoResponse.of(targetUser, isFollowing);
    }
    public List<UserInfoResponse> searchUsersByKeyword(Long userId,String keyword) {
        User currentUser = userRepository.findById(userId)
                .orElseThrow(() -> new IllegalArgumentException("내정보를 찾을 수 없습니다."));

        List<User> users = userRepository.findByNicknameContaining(keyword,"e");

        return users.stream()
                .map(user -> {
                    Optional<Follow> follow = findFollowStatus(currentUser, user);
                    boolean isFollowing = follow.isPresent();
                    return UserInfoResponse.of(user, isFollowing);
                })
                .collect(Collectors.toList());
    }


    public void followUser(Long followerId, Long followingId) {
        User follower = userRepository.findById(followerId)
                .orElseThrow(() -> new IllegalArgumentException("팔로우 하는 사용자를 찾을 수 없습니다."));
        User following = userRepository.findById(followingId)
                .orElseThrow(() -> new IllegalArgumentException("팔로우 대상 사용자를 찾을 수 없습니다."));

        Follow follow = followRepository.findByFollowerAndFollowing(follower, following)
                .orElseGet(() -> new Follow(follower, following, FollowStatus.FOLLOWING));

        followRepository.save(follow);
    }
    public void unfollowUser(Long followerId, Long followingId) {
        User follower = userRepository.findById(followerId)
                .orElseThrow(() -> new IllegalArgumentException("언팔로우 하는 사용자를 찾을 수 없습니다."));
        User following = userRepository.findById(followingId)
                .orElseThrow(() -> new IllegalArgumentException("언팔로우 대상 사용자를 찾을 수 없습니다."));

        Follow follow = followRepository.findByFollowerAndFollowing(follower, following)
                .orElseThrow(() -> new IllegalArgumentException("팔로우 관계를 찾을 수 없습니다."));

        follow.unfollow();
        followRepository.save(follow);
    }
    public List<UserInfoResponse> getFollowingUsers(Long userId) {
        User follower = userRepository.findById(userId)
                .orElseThrow(() -> new IllegalArgumentException("내정보를 찾을 수 없습니다."));
        List<Follow> followingUsers = followRepository.findByFollowerId(follower.getId());
        return followingUsers.stream()
                .map(follow -> {
                    User followedUser = userRepository.findById(follow.getFollowing().getId())
                            .orElseThrow(() -> new IllegalArgumentException("팔로우한 사용자를 찾을 수 없습니다."));
                    return UserInfoResponse.of(followedUser, true);
                })
                .collect(Collectors.toList());
    }

    private boolean doesUserNotExist(String email) {
        return !userRepository.existsByEmail(email);
    }
}
