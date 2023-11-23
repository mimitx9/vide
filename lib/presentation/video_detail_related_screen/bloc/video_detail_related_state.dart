// ignore_for_file: must_be_immutable

part of 'video_detail_related_bloc.dart';

/// Represents the state of VideoDetailRelated in the application.
class VideoDetailRelatedState extends Equatable {
  VideoDetailRelatedState({
    this.radioGroup = "",
    this.videoDetailRelatedModelObj,
  });

  VideoDetailRelatedModel? videoDetailRelatedModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        radioGroup,
        videoDetailRelatedModelObj,
      ];
  VideoDetailRelatedState copyWith({
    String? radioGroup,
    VideoDetailRelatedModel? videoDetailRelatedModelObj,
  }) {
    return VideoDetailRelatedState(
      radioGroup: radioGroup ?? this.radioGroup,
      videoDetailRelatedModelObj:
          videoDetailRelatedModelObj ?? this.videoDetailRelatedModelObj,
    );
  }
}
