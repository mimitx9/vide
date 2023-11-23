import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:onito_s_application1/presentation/video_detail_unlock_success_screen/models/video_detail_unlock_success_model.dart';part 'video_detail_unlock_success_event.dart';part 'video_detail_unlock_success_state.dart';/// A bloc that manages the state of a VideoDetailUnlockSuccess according to the event that is dispatched to it.
class VideoDetailUnlockSuccessBloc extends Bloc<VideoDetailUnlockSuccessEvent, VideoDetailUnlockSuccessState> {VideoDetailUnlockSuccessBloc(VideoDetailUnlockSuccessState initialState) : super(initialState) { on<VideoDetailUnlockSuccessInitialEvent>(_onInitialize); }

_onInitialize(VideoDetailUnlockSuccessInitialEvent event, Emitter<VideoDetailUnlockSuccessState> emit, ) async  { emit(state.copyWith(locationController: TextEditingController())); } 
 }
