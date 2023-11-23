// ignore_for_file: must_be_immutable

part of 'video_detail_scroll_down_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VideoDetailScrollDown widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VideoDetailScrollDownEvent extends Equatable {}

/// Event that is dispatched when the VideoDetailScrollDown widget is first created.
class VideoDetailScrollDownInitialEvent extends VideoDetailScrollDownEvent {
  @override
  List<Object?> get props => [];
}
