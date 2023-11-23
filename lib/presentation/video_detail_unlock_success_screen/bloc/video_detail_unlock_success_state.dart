// ignore_for_file: must_be_immutable

part of 'video_detail_unlock_success_bloc.dart';

/// Represents the state of VideoDetailUnlockSuccess in the application.
class VideoDetailUnlockSuccessState extends Equatable {
  VideoDetailUnlockSuccessState({
    this.locationController,
    this.videoDetailUnlockSuccessModelObj,
  });

  TextEditingController? locationController;

  VideoDetailUnlockSuccessModel? videoDetailUnlockSuccessModelObj;

  @override
  List<Object?> get props => [
        locationController,
        videoDetailUnlockSuccessModelObj,
      ];
  VideoDetailUnlockSuccessState copyWith({
    TextEditingController? locationController,
    VideoDetailUnlockSuccessModel? videoDetailUnlockSuccessModelObj,
  }) {
    return VideoDetailUnlockSuccessState(
      locationController: locationController ?? this.locationController,
      videoDetailUnlockSuccessModelObj: videoDetailUnlockSuccessModelObj ??
          this.videoDetailUnlockSuccessModelObj,
    );
  }
}
