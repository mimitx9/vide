import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:onito_s_application1/presentation/video_detail_author_page/models/video_detail_author_model.dart';
part 'video_detail_author_event.dart';
part 'video_detail_author_state.dart';

/// A bloc that manages the state of a VideoDetailAuthor according to the event that is dispatched to it.
class VideoDetailAuthorBloc
    extends Bloc<VideoDetailAuthorEvent, VideoDetailAuthorState> {
  VideoDetailAuthorBloc(VideoDetailAuthorState initialState)
      : super(initialState) {
    on<VideoDetailAuthorInitialEvent>(_onInitialize);
  }

  _onInitialize(
    VideoDetailAuthorInitialEvent event,
    Emitter<VideoDetailAuthorState> emit,
  ) async {}
}
