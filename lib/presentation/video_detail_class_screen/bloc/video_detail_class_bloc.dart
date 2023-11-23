import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:onito_s_application1/presentation/video_detail_class_screen/models/video_detail_class_model.dart';part 'video_detail_class_event.dart';part 'video_detail_class_state.dart';/// A bloc that manages the state of a VideoDetailClass according to the event that is dispatched to it.
class VideoDetailClassBloc extends Bloc<VideoDetailClassEvent, VideoDetailClassState> {VideoDetailClassBloc(VideoDetailClassState initialState) : super(initialState) { on<VideoDetailClassInitialEvent>(_onInitialize); }

_onInitialize(VideoDetailClassInitialEvent event, Emitter<VideoDetailClassState> emit, ) async  { emit(state.copyWith(mobileNoController: TextEditingController(), emailController: TextEditingController(), tuanAnhLeController: TextEditingController())); } 
 }
