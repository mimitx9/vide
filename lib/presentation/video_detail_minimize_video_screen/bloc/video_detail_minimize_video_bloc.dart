import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:onito_s_application1/presentation/video_detail_minimize_video_screen/models/video_detail_minimize_video_model.dart';
part 'video_detail_minimize_video_event.dart';
part 'video_detail_minimize_video_state.dart';

/// A bloc that manages the state of a VideoDetailMinimizeVideo according to the event that is dispatched to it.
class VideoDetailMinimizeVideoBloc
    extends Bloc<VideoDetailMinimizeVideoEvent, VideoDetailMinimizeVideoState> {
  VideoDetailMinimizeVideoBloc(VideoDetailMinimizeVideoState initialState)
      : super(initialState) {
    on<VideoDetailMinimizeVideoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    VideoDetailMinimizeVideoInitialEvent event,
    Emitter<VideoDetailMinimizeVideoState> emit,
  ) async {}
}
