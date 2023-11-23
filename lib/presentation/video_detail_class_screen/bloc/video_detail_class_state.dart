// ignore_for_file: must_be_immutable

part of 'video_detail_class_bloc.dart';

/// Represents the state of VideoDetailClass in the application.
class VideoDetailClassState extends Equatable {
  VideoDetailClassState({
    this.mobileNoController,
    this.emailController,
    this.tuanAnhLeController,
    this.videoDetailClassModelObj,
  });

  TextEditingController? mobileNoController;

  TextEditingController? emailController;

  TextEditingController? tuanAnhLeController;

  VideoDetailClassModel? videoDetailClassModelObj;

  @override
  List<Object?> get props => [
        mobileNoController,
        emailController,
        tuanAnhLeController,
        videoDetailClassModelObj,
      ];
  VideoDetailClassState copyWith({
    TextEditingController? mobileNoController,
    TextEditingController? emailController,
    TextEditingController? tuanAnhLeController,
    VideoDetailClassModel? videoDetailClassModelObj,
  }) {
    return VideoDetailClassState(
      mobileNoController: mobileNoController ?? this.mobileNoController,
      emailController: emailController ?? this.emailController,
      tuanAnhLeController: tuanAnhLeController ?? this.tuanAnhLeController,
      videoDetailClassModelObj:
          videoDetailClassModelObj ?? this.videoDetailClassModelObj,
    );
  }
}
