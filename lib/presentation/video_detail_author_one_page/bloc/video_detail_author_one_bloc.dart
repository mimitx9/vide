import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:onito_s_application1/presentation/video_detail_author_one_page/models/video_detail_author_one_model.dart';
part 'video_detail_author_one_event.dart';
part 'video_detail_author_one_state.dart';

/// A bloc that manages the state of a VideoDetailAuthorOne according to the event that is dispatched to it.
class VideoDetailAuthorOneBloc
    extends Bloc<VideoDetailAuthorOneEvent, VideoDetailAuthorOneState> {
  VideoDetailAuthorOneBloc(VideoDetailAuthorOneState initialState)
      : super(initialState) {
    on<VideoDetailAuthorOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    VideoDetailAuthorOneInitialEvent event,
    Emitter<VideoDetailAuthorOneState> emit,
  ) async {}
}
