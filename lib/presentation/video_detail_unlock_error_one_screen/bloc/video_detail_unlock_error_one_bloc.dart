import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:onito_s_application1/presentation/video_detail_unlock_error_one_screen/models/video_detail_unlock_error_one_model.dart';part 'video_detail_unlock_error_one_event.dart';part 'video_detail_unlock_error_one_state.dart';/// A bloc that manages the state of a VideoDetailUnlockErrorOne according to the event that is dispatched to it.
class VideoDetailUnlockErrorOneBloc extends Bloc<VideoDetailUnlockErrorOneEvent, VideoDetailUnlockErrorOneState> {VideoDetailUnlockErrorOneBloc(VideoDetailUnlockErrorOneState initialState) : super(initialState) { on<VideoDetailUnlockErrorOneInitialEvent>(_onInitialize); }

_onInitialize(VideoDetailUnlockErrorOneInitialEvent event, Emitter<VideoDetailUnlockErrorOneState> emit, ) async  { emit(state.copyWith(closeController: TextEditingController())); } 
 }
