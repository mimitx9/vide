import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:onito_s_application1/presentation/video_detail_scroll_down_screen/models/video_detail_scroll_down_model.dart';
part 'video_detail_scroll_down_event.dart';
part 'video_detail_scroll_down_state.dart';

/// A bloc that manages the state of a VideoDetailScrollDown according to the event that is dispatched to it.
class VideoDetailScrollDownBloc
    extends Bloc<VideoDetailScrollDownEvent, VideoDetailScrollDownState> {
  VideoDetailScrollDownBloc(VideoDetailScrollDownState initialState)
      : super(initialState) {
    on<VideoDetailScrollDownInitialEvent>(_onInitialize);
  }

  _onInitialize(
    VideoDetailScrollDownInitialEvent event,
    Emitter<VideoDetailScrollDownState> emit,
  ) async {}
}
