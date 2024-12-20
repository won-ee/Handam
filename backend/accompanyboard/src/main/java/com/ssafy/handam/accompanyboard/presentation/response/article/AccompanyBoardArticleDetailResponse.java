package com.ssafy.handam.accompanyboard.presentation.response.article;

import com.ssafy.handam.accompanyboard.application.dto.AccompanyBoardArticleDetailDto;

public record AccompanyBoardArticleDetailResponse(
        Long id,
        Long userId,
        Long totalPlanId,
        String profileImageUrl,
        String nickName,
        String title,
        String description,
        String createdDate,
        int commentCount) {

    public static AccompanyBoardArticleDetailResponse of(
            AccompanyBoardArticleDetailDto accompanyBoardArticleDetailDto
    ) {
        return new AccompanyBoardArticleDetailResponse(
                accompanyBoardArticleDetailDto.id(),
                accompanyBoardArticleDetailDto.userId(),
                accompanyBoardArticleDetailDto.totalPlanId(),
                accompanyBoardArticleDetailDto.profileImageUrl(),
                accompanyBoardArticleDetailDto.nickName(),
                accompanyBoardArticleDetailDto.title(),
                accompanyBoardArticleDetailDto.description(),
                accompanyBoardArticleDetailDto.createdDate(),
                accompanyBoardArticleDetailDto.commentCount());
    }
}
