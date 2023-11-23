import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:onito_s_application1/presentation/video_detail_class_three_screen/models/video_detail_class_three_model.dart';
part 'video_detail_class_three_event.dart';
part 'video_detail_class_three_state.dart';

/// A bloc that manages the state of a VideoDetailClassThree according to the event that is dispatched to it.
class VideoDetailClassThreeBloc
    extends Bloc<VideoDetailClassThreeEvent, VideoDetailClassThreeState> {
  VideoDetailClassThreeBloc(VideoDetailClassThreeState initialState)
      : super(initialState) {
    on<VideoDetailClassThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    VideoDetailClassThreeInitialEvent event,
    Emitter<VideoDetailClassThreeState> emit,
  ) async {}
}
