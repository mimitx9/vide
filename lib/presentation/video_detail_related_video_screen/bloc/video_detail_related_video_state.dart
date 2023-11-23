// ignore_for_file: must_be_immutable

part of 'video_detail_related_video_bloc.dart';

/// Represents the state of VideoDetailRelatedVideo in the application.
class VideoDetailRelatedVideoState extends Equatable {
  VideoDetailRelatedVideoState({this.videoDetailRelatedVideoModelObj});

  VideoDetailRelatedVideoModel? videoDetailRelatedVideoModelObj;

  @override
  List<Object?> get props => [
        videoDetailRelatedVideoModelObj,
      ];
  VideoDetailRelatedVideoState copyWith(
      {VideoDetailRelatedVideoModel? videoDetailRelatedVideoModelObj}) {
    return VideoDetailRelatedVideoState(
      videoDetailRelatedVideoModelObj: videoDetailRelatedVideoModelObj ??
          this.videoDetailRelatedVideoModelObj,
    );
  }
}
