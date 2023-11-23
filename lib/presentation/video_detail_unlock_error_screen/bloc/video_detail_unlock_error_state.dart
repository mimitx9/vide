// ignore_for_file: must_be_immutable

part of 'video_detail_unlock_error_bloc.dart';

/// Represents the state of VideoDetailUnlockError in the application.
class VideoDetailUnlockErrorState extends Equatable {
  VideoDetailUnlockErrorState({this.videoDetailUnlockErrorModelObj});

  VideoDetailUnlockErrorModel? videoDetailUnlockErrorModelObj;

  @override
  List<Object?> get props => [
        videoDetailUnlockErrorModelObj,
      ];
  VideoDetailUnlockErrorState copyWith(
      {VideoDetailUnlockErrorModel? videoDetailUnlockErrorModelObj}) {
    return VideoDetailUnlockErrorState(
      videoDetailUnlockErrorModelObj:
          videoDetailUnlockErrorModelObj ?? this.videoDetailUnlockErrorModelObj,
    );
  }
}
