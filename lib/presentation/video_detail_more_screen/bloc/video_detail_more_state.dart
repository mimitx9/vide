// ignore_for_file: must_be_immutable

part of 'video_detail_more_bloc.dart';

/// Represents the state of VideoDetailMore in the application.
class VideoDetailMoreState extends Equatable {
  VideoDetailMoreState({this.videoDetailMoreModelObj});

  VideoDetailMoreModel? videoDetailMoreModelObj;

  @override
  List<Object?> get props => [
        videoDetailMoreModelObj,
      ];
  VideoDetailMoreState copyWith(
      {VideoDetailMoreModel? videoDetailMoreModelObj}) {
    return VideoDetailMoreState(
      videoDetailMoreModelObj:
          videoDetailMoreModelObj ?? this.videoDetailMoreModelObj,
    );
  }
}
