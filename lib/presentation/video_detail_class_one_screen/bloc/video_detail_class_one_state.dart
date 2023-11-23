// ignore_for_file: must_be_immutable

part of 'video_detail_class_one_bloc.dart';

/// Represents the state of VideoDetailClassOne in the application.
class VideoDetailClassOneState extends Equatable {
  VideoDetailClassOneState({this.videoDetailClassOneModelObj});

  VideoDetailClassOneModel? videoDetailClassOneModelObj;

  @override
  List<Object?> get props => [
        videoDetailClassOneModelObj,
      ];
  VideoDetailClassOneState copyWith(
      {VideoDetailClassOneModel? videoDetailClassOneModelObj}) {
    return VideoDetailClassOneState(
      videoDetailClassOneModelObj:
          videoDetailClassOneModelObj ?? this.videoDetailClassOneModelObj,
    );
  }
}
