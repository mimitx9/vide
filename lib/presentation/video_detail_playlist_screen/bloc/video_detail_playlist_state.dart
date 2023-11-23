// ignore_for_file: must_be_immutable

part of 'video_detail_playlist_bloc.dart';

/// Represents the state of VideoDetailPlaylist in the application.
class VideoDetailPlaylistState extends Equatable {
  VideoDetailPlaylistState({
    this.radioGroup = "",
    this.videoDetailPlaylistModelObj,
  });

  VideoDetailPlaylistModel? videoDetailPlaylistModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        radioGroup,
        videoDetailPlaylistModelObj,
      ];
  VideoDetailPlaylistState copyWith({
    String? radioGroup,
    VideoDetailPlaylistModel? videoDetailPlaylistModelObj,
  }) {
    return VideoDetailPlaylistState(
      radioGroup: radioGroup ?? this.radioGroup,
      videoDetailPlaylistModelObj:
          videoDetailPlaylistModelObj ?? this.videoDetailPlaylistModelObj,
    );
  }
}
