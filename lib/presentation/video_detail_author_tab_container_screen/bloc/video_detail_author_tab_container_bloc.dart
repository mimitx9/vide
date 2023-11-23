import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:onito_s_application1/presentation/video_detail_author_tab_container_screen/models/video_detail_author_tab_container_model.dart';
part 'video_detail_author_tab_container_event.dart';
part 'video_detail_author_tab_container_state.dart';

/// A bloc that manages the state of a VideoDetailAuthorTabContainer according to the event that is dispatched to it.
class VideoDetailAuthorTabContainerBloc extends Bloc<
    VideoDetailAuthorTabContainerEvent, VideoDetailAuthorTabContainerState> {
  VideoDetailAuthorTabContainerBloc(
      VideoDetailAuthorTabContainerState initialState)
      : super(initialState) {
    on<VideoDetailAuthorTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    VideoDetailAuthorTabContainerInitialEvent event,
    Emitter<VideoDetailAuthorTabContainerState> emit,
  ) async {}
}
