// ignore_for_file: must_be_immutable

part of 'video_detail_class_two_bloc.dart';

/// Represents the state of VideoDetailClassTwo in the application.
class VideoDetailClassTwoState extends Equatable {
  VideoDetailClassTwoState({
    this.mtkhucController,
    this.settingsController,
    this.isShowPassword = true,
    this.videoDetailClassTwoModelObj,
  });

  TextEditingController? mtkhucController;

  TextEditingController? settingsController;

  VideoDetailClassTwoModel? videoDetailClassTwoModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        mtkhucController,
        settingsController,
        isShowPassword,
        videoDetailClassTwoModelObj,
      ];
  VideoDetailClassTwoState copyWith({
    TextEditingController? mtkhucController,
    TextEditingController? settingsController,
    bool? isShowPassword,
    VideoDetailClassTwoModel? videoDetailClassTwoModelObj,
  }) {
    return VideoDetailClassTwoState(
      mtkhucController: mtkhucController ?? this.mtkhucController,
      settingsController: settingsController ?? this.settingsController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      videoDetailClassTwoModelObj:
          videoDetailClassTwoModelObj ?? this.videoDetailClassTwoModelObj,
    );
  }
}
