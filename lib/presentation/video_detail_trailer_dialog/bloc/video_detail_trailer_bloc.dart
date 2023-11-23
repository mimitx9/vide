import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:onito_s_application1/presentation/video_detail_trailer_dialog/models/video_detail_trailer_model.dart';
part 'video_detail_trailer_event.dart';
part 'video_detail_trailer_state.dart';

/// A bloc that manages the state of a VideoDetailTrailer according to the event that is dispatched to it.
class VideoDetailTrailerBloc
    extends Bloc<VideoDetailTrailerEvent, VideoDetailTrailerState> {
  VideoDetailTrailerBloc(VideoDetailTrailerState initialState)
      : super(initialState) {
    on<VideoDetailTrailerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    VideoDetailTrailerInitialEvent event,
    Emitter<VideoDetailTrailerState> emit,
  ) async {}
}
