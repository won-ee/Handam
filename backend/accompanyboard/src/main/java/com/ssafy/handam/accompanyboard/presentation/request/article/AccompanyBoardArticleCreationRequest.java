package com.ssafy.handam.accompanyboard.presentation.request.article;

public record AccompanyBoardArticleCreationRequest(
        Long userId,
        Long totalPlanId,
        String title,
        String description
) {
    public static AccompanyBoardArticleCreationRequest toServiceRequest(AccompanyBoardArticleCreationRequest request) {
        return new AccompanyBoardArticleCreationRequest(request.userId().longValue(), request.totalPlanId().longValue(), request.title(), request.description());
    }
}
