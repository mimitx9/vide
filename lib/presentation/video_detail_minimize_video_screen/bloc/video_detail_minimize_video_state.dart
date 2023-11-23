// ignore_for_file: must_be_immutable

part of 'video_detail_minimize_video_bloc.dart';

/// Represents the state of VideoDetailMinimizeVideo in the application.
class VideoDetailMinimizeVideoState extends Equatable {
  VideoDetailMinimizeVideoState({this.videoDetailMinimizeVideoModelObj});

  VideoDetailMinimizeVideoModel? videoDetailMinimizeVideoModelObj;

  @override
  List<Object?> get props => [
        videoDetailMinimizeVideoModelObj,
      ];
  VideoDetailMinimizeVideoState copyWith(
      {VideoDetailMinimizeVideoModel? videoDetailMinimizeVideoModelObj}) {
    return VideoDetailMinimizeVideoState(
      videoDetailMinimizeVideoModelObj: videoDetailMinimizeVideoModelObj ??
          this.videoDetailMinimizeVideoModelObj,
    );
  }
}
