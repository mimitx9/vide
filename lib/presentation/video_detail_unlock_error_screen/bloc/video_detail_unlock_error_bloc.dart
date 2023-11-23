import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:onito_s_application1/presentation/video_detail_unlock_error_screen/models/video_detail_unlock_error_model.dart';part 'video_detail_unlock_error_event.dart';part 'video_detail_unlock_error_state.dart';/// A bloc that manages the state of a VideoDetailUnlockError according to the event that is dispatched to it.
class VideoDetailUnlockErrorBloc extends Bloc<VideoDetailUnlockErrorEvent, VideoDetailUnlockErrorState> {VideoDetailUnlockErrorBloc(VideoDetailUnlockErrorState initialState) : super(initialState) { on<VideoDetailUnlockErrorInitialEvent>(_onInitialize); }

_onInitialize(VideoDetailUnlockErrorInitialEvent event, Emitter<VideoDetailUnlockErrorState> emit, ) async  {  } 
 }
