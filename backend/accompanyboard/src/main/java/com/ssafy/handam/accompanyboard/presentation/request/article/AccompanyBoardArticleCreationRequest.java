package com.ssafy.handam.accompanyboard.presentation.request.article;

public record AccompanyBoardArticleCreationRequest(
        Long userId,
        Long scheduleId,
        String title,
        String description
) {
    public static AccompanyBoardArticleCreationRequest toServiceRequest(AccompanyBoardArticleCreationRequest request) {
        return new AccompanyBoardArticleCreationRequest(request.userId(), request.scheduleId(), request.title(), request.description());
    }
}