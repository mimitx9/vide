// ignore_for_file: must_be_immutable

part of 'video_detail_class_three_bloc.dart';

/// Represents the state of VideoDetailClassThree in the application.
class VideoDetailClassThreeState extends Equatable {
  VideoDetailClassThreeState({this.videoDetailClassThreeModelObj});

  VideoDetailClassThreeModel? videoDetailClassThreeModelObj;

  @override
  List<Object?> get props => [
        videoDetailClassThreeModelObj,
      ];
  VideoDetailClassThreeState copyWith(
      {VideoDetailClassThreeModel? videoDetailClassThreeModelObj}) {
    return VideoDetailClassThreeState(
      videoDetailClassThreeModelObj:
          videoDetailClassThreeModelObj ?? this.videoDetailClassThreeModelObj,
    );
  }
}
