// ignore_for_file: must_be_immutable

part of 'video_detail_minimize_video_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VideoDetailMinimizeVideo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VideoDetailMinimizeVideoEvent extends Equatable {}

/// Event that is dispatched when the VideoDetailMinimizeVideo widget is first created.
class VideoDetailMinimizeVideoInitialEvent
    extends VideoDetailMinimizeVideoEvent {
  @override
  List<Object?> get props => [];
}
