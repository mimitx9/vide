import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/videodetailplaylistlist_item_model.dart';
import 'package:onito_s_application1/presentation/video_detail_playlist_screen/models/video_detail_playlist_model.dart';
part 'video_detail_playlist_event.dart';
part 'video_detail_playlist_state.dart';

/// A bloc that manages the state of a VideoDetailPlaylist according to the event that is dispatched to it.
class VideoDetailPlaylistBloc
    extends Bloc<VideoDetailPlaylistEvent, VideoDetailPlaylistState> {
  VideoDetailPlaylistBloc(VideoDetailPlaylistState initialState)
      : super(initialState) {
    on<VideoDetailPlaylistInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<VideoDetailPlaylistState> emit,
  ) {
    emit(state.copyWith(
      radioGroup: event.value,
    ));
  }

  List<VideodetailplaylistlistItemModel> fillVideodetailplaylistlistItemList() {
    return [
      VideodetailplaylistlistItemModel(
          image: ImageConstant.imgRectangle425,
          time: "19:45",
          treatmentPlanning:
              "Treatment Planning in the Digital Era - Digital Patient Concept",
          myList: "My list",
          download: "Download"),
      VideodetailplaylistlistItemModel(
          image: ImageConstant.imgRectangle449,
          time: "19:45",
          treatmentPlanning:
              "CLINICAL VIDEO Root coverage - The Use of Connective Tissue and Emdogain",
          myList: "My list",
          download: "Download")
    ];
  }

  _onInitialize(
    VideoDetailPlaylistInitialEvent event,
    Emitter<VideoDetailPlaylistState> emit,
  ) async {
    emit(state.copyWith(
      radioGroup: "",
    ));
    emit(state.copyWith(
        videoDetailPlaylistModelObj:
            state.videoDetailPlaylistModelObj?.copyWith(
      videodetailplaylistlistItemList: fillVideodetailplaylistlistItemList(),
    )));
  }
}
