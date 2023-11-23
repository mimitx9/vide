// ignore_for_file: must_be_immutable

part of 'video_detail_scroll_down_bloc.dart';

/// Represents the state of VideoDetailScrollDown in the application.
class VideoDetailScrollDownState extends Equatable {
  VideoDetailScrollDownState({this.videoDetailScrollDownModelObj});

  VideoDetailScrollDownModel? videoDetailScrollDownModelObj;

  @override
  List<Object?> get props => [
        videoDetailScrollDownModelObj,
      ];
  VideoDetailScrollDownState copyWith(
      {VideoDetailScrollDownModel? videoDetailScrollDownModelObj}) {
    return VideoDetailScrollDownState(
      videoDetailScrollDownModelObj:
          videoDetailScrollDownModelObj ?? this.videoDetailScrollDownModelObj,
    );
  }
}
