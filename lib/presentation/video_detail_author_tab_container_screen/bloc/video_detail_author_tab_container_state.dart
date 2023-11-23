// ignore_for_file: must_be_immutable

part of 'video_detail_author_tab_container_bloc.dart';

/// Represents the state of VideoDetailAuthorTabContainer in the application.
class VideoDetailAuthorTabContainerState extends Equatable {
  VideoDetailAuthorTabContainerState(
      {this.videoDetailAuthorTabContainerModelObj});

  VideoDetailAuthorTabContainerModel? videoDetailAuthorTabContainerModelObj;

  @override
  List<Object?> get props => [
        videoDetailAuthorTabContainerModelObj,
      ];
  VideoDetailAuthorTabContainerState copyWith(
      {VideoDetailAuthorTabContainerModel?
          videoDetailAuthorTabContainerModelObj}) {
    return VideoDetailAuthorTabContainerState(
      videoDetailAuthorTabContainerModelObj:
          videoDetailAuthorTabContainerModelObj ??
              this.videoDetailAuthorTabContainerModelObj,
    );
  }
}
