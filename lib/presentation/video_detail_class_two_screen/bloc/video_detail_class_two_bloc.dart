import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:onito_s_application1/presentation/video_detail_class_two_screen/models/video_detail_class_two_model.dart';part 'video_detail_class_two_event.dart';part 'video_detail_class_two_state.dart';/// A bloc that manages the state of a VideoDetailClassTwo according to the event that is dispatched to it.
class VideoDetailClassTwoBloc extends Bloc<VideoDetailClassTwoEvent, VideoDetailClassTwoState> {VideoDetailClassTwoBloc(VideoDetailClassTwoState initialState) : super(initialState) { on<VideoDetailClassTwoInitialEvent>(_onInitialize); on<ChangePasswordVisibilityEvent>(_changePasswordVisibility); }

_changePasswordVisibility(ChangePasswordVisibilityEvent event, Emitter<VideoDetailClassTwoState> emit, ) { emit(state.copyWith(isShowPassword: event.value)); } 
_onInitialize(VideoDetailClassTwoInitialEvent event, Emitter<VideoDetailClassTwoState> emit, ) async  { emit(state.copyWith(mtkhucController: TextEditingController(), settingsController: TextEditingController(), isShowPassword: true)); } 
 }
