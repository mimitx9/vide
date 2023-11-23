// ignore_for_file: must_be_immutable

part of 'video_detail_class_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VideoDetailClass widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VideoDetailClassEvent extends Equatable {}

/// Event that is dispatched when the VideoDetailClass widget is first created.
class VideoDetailClassInitialEvent extends VideoDetailClassEvent {
  @override
  List<Object?> get props => [];
}
