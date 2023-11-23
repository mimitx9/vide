import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:onito_s_application1/presentation/video_detail_related_video_screen/models/video_detail_related_video_model.dart';
part 'video_detail_related_video_event.dart';
part 'video_detail_related_video_state.dart';

/// A bloc that manages the state of a VideoDetailRelatedVideo according to the event that is dispatched to it.
class VideoDetailRelatedVideoBloc
    extends Bloc<VideoDetailRelatedVideoEvent, VideoDetailRelatedVideoState> {
  VideoDetailRelatedVideoBloc(VideoDetailRelatedVideoState initialState)
      : super(initialState) {
    on<VideoDetailRelatedVideoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    VideoDetailRelatedVideoInitialEvent event,
    Emitter<VideoDetailRelatedVideoState> emit,
  ) async {}
}
