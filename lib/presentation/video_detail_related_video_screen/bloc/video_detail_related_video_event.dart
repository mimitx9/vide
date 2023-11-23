// ignore_for_file: must_be_immutable

part of 'video_detail_related_video_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VideoDetailRelatedVideo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VideoDetailRelatedVideoEvent extends Equatable {}

/// Event that is dispatched when the VideoDetailRelatedVideo widget is first created.
class VideoDetailRelatedVideoInitialEvent extends VideoDetailRelatedVideoEvent {
  @override
  List<Object?> get props => [];
}
