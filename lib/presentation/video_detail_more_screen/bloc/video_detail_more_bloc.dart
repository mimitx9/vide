import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:onito_s_application1/presentation/video_detail_more_screen/models/video_detail_more_model.dart';
part 'video_detail_more_event.dart';
part 'video_detail_more_state.dart';

/// A bloc that manages the state of a VideoDetailMore according to the event that is dispatched to it.
class VideoDetailMoreBloc
    extends Bloc<VideoDetailMoreEvent, VideoDetailMoreState> {
  VideoDetailMoreBloc(VideoDetailMoreState initialState) : super(initialState) {
    on<VideoDetailMoreInitialEvent>(_onInitialize);
  }

  _onInitialize(
    VideoDetailMoreInitialEvent event,
    Emitter<VideoDetailMoreState> emit,
  ) async {}
}
