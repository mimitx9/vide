import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:onito_s_application1/presentation/video_detail_class_one_screen/models/video_detail_class_one_model.dart';part 'video_detail_class_one_event.dart';part 'video_detail_class_one_state.dart';/// A bloc that manages the state of a VideoDetailClassOne according to the event that is dispatched to it.
class VideoDetailClassOneBloc extends Bloc<VideoDetailClassOneEvent, VideoDetailClassOneState> {VideoDetailClassOneBloc(VideoDetailClassOneState initialState) : super(initialState) { on<VideoDetailClassOneInitialEvent>(_onInitialize); }

_onInitialize(VideoDetailClassOneInitialEvent event, Emitter<VideoDetailClassOneState> emit, ) async  {  } 
 }
