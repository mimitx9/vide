// ignore_for_file: must_be_immutable

part of 'video_detail_class_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VideoDetailClassThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VideoDetailClassThreeEvent extends Equatable {}

/// Event that is dispatched when the VideoDetailClassThree widget is first created.
class VideoDetailClassThreeInitialEvent extends VideoDetailClassThreeEvent {
  @override
  List<Object?> get props => [];
}
