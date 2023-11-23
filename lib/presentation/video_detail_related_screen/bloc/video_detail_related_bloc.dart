import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:onito_s_application1/presentation/video_detail_related_screen/models/video_detail_related_model.dart';
part 'video_detail_related_event.dart';
part 'video_detail_related_state.dart';

/// A bloc that manages the state of a VideoDetailRelated according to the event that is dispatched to it.
class VideoDetailRelatedBloc
    extends Bloc<VideoDetailRelatedEvent, VideoDetailRelatedState> {
  VideoDetailRelatedBloc(VideoDetailRelatedState initialState)
      : super(initialState) {
    on<VideoDetailRelatedInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<VideoDetailRelatedState> emit,
  ) {
    emit(state.copyWith(
      radioGroup: event.value,
    ));
  }

  _onInitialize(
    VideoDetailRelatedInitialEvent event,
    Emitter<VideoDetailRelatedState> emit,
  ) async {
    emit(state.copyWith(
      radioGroup: "",
    ));
  }
}
