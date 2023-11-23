// ignore_for_file: must_be_immutable

part of 'video_detail_class_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VideoDetailClassOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VideoDetailClassOneEvent extends Equatable {}

/// Event that is dispatched when the VideoDetailClassOne widget is first created.
class VideoDetailClassOneInitialEvent extends VideoDetailClassOneEvent {
  @override
  List<Object?> get props => [];
}
