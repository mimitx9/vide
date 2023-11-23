// ignore_for_file: must_be_immutable

part of 'video_detail_unlock_error_one_bloc.dart';

/// Represents the state of VideoDetailUnlockErrorOne in the application.
class VideoDetailUnlockErrorOneState extends Equatable {
  VideoDetailUnlockErrorOneState({
    this.closeController,
    this.videoDetailUnlockErrorOneModelObj,
  });

  TextEditingController? closeController;

  VideoDetailUnlockErrorOneModel? videoDetailUnlockErrorOneModelObj;

  @override
  List<Object?> get props => [
        closeController,
        videoDetailUnlockErrorOneModelObj,
      ];
  VideoDetailUnlockErrorOneState copyWith({
    TextEditingController? closeController,
    VideoDetailUnlockErrorOneModel? videoDetailUnlockErrorOneModelObj,
  }) {
    return VideoDetailUnlockErrorOneState(
      closeController: closeController ?? this.closeController,
      videoDetailUnlockErrorOneModelObj: videoDetailUnlockErrorOneModelObj ??
          this.videoDetailUnlockErrorOneModelObj,
    );
  }
}
