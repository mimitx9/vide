// ignore_for_file: must_be_immutable

part of 'video_detail_author_bloc.dart';

/// Represents the state of VideoDetailAuthor in the application.
class VideoDetailAuthorState extends Equatable {
  VideoDetailAuthorState({this.videoDetailAuthorModelObj});

  VideoDetailAuthorModel? videoDetailAuthorModelObj;

  @override
  List<Object?> get props => [
        videoDetailAuthorModelObj,
      ];
  VideoDetailAuthorState copyWith(
      {VideoDetailAuthorModel? videoDetailAuthorModelObj}) {
    return VideoDetailAuthorState(
      videoDetailAuthorModelObj:
          videoDetailAuthorModelObj ?? this.videoDetailAuthorModelObj,
    );
  }
}
