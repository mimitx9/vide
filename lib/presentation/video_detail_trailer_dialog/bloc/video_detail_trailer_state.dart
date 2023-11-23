// ignore_for_file: must_be_immutable

part of 'video_detail_trailer_bloc.dart';

/// Represents the state of VideoDetailTrailer in the application.
class VideoDetailTrailerState extends Equatable {
  VideoDetailTrailerState({this.videoDetailTrailerModelObj});

  VideoDetailTrailerModel? videoDetailTrailerModelObj;

  @override
  List<Object?> get props => [
        videoDetailTrailerModelObj,
      ];
  VideoDetailTrailerState copyWith(
      {VideoDetailTrailerModel? videoDetailTrailerModelObj}) {
    return VideoDetailTrailerState(
      videoDetailTrailerModelObj:
          videoDetailTrailerModelObj ?? this.videoDetailTrailerModelObj,
    );
  }
}
