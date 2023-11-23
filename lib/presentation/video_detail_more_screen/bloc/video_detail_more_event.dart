// ignore_for_file: must_be_immutable

part of 'video_detail_more_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VideoDetailMore widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VideoDetailMoreEvent extends Equatable {}

/// Event that is dispatched when the VideoDetailMore widget is first created.
class VideoDetailMoreInitialEvent extends VideoDetailMoreEvent {
  @override
  List<Object?> get props => [];
}
