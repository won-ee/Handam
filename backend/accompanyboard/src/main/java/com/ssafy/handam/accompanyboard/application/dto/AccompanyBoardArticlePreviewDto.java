package com.ssafy.handam.accompanyboard.application.dto;

import com.ssafy.handam.accompanyboard.domain.entity.Article;
import com.ssafy.handam.accompanyboard.infrastructure.client.dto.UserDto;
import java.time.format.DateTimeFormatter;

public record AccompanyBoardArticlePreviewDto(
        Long id,
        Long userId,
        Long totalPlanId,
        String profileImageUrl,
        String nickName,
        String title,
        String createdDate) {

    public static AccompanyBoardArticlePreviewDto from(Article article, UserDetailDto userDetailDto) {

            String formattedCreatedDate = (article.getCreatedDate() != null) ?
            article.getCreatedDate().format(DateTimeFormatter.ofPattern("yyyy-MM-dd")) :
            "N/A";
        return new AccompanyBoardArticlePreviewDto(
                article.getId(),
                article.getUserId(),
                article.getTotalPlanId(),
                userDetailDto.profileImageUrl(),
                userDetailDto.nickName(),
                article.getTitle(),
                formattedCreatedDate);
    }

}
