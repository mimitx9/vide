// ignore_for_file: must_be_immutable

part of 'video_detail_author_one_bloc.dart';

/// Represents the state of VideoDetailAuthorOne in the application.
class VideoDetailAuthorOneState extends Equatable {
  VideoDetailAuthorOneState({this.videoDetailAuthorOneModelObj});

  VideoDetailAuthorOneModel? videoDetailAuthorOneModelObj;

  @override
  List<Object?> get props => [
        videoDetailAuthorOneModelObj,
      ];
  VideoDetailAuthorOneState copyWith(
      {VideoDetailAuthorOneModel? videoDetailAuthorOneModelObj}) {
    return VideoDetailAuthorOneState(
      videoDetailAuthorOneModelObj:
          videoDetailAuthorOneModelObj ?? this.videoDetailAuthorOneModelObj,
    );
  }
}
