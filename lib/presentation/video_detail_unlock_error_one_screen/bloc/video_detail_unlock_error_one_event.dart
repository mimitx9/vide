// ignore_for_file: must_be_immutable

part of 'video_detail_unlock_error_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VideoDetailUnlockErrorOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VideoDetailUnlockErrorOneEvent extends Equatable {}

/// Event that is dispatched when the VideoDetailUnlockErrorOne widget is first created.
class VideoDetailUnlockErrorOneInitialEvent
    extends VideoDetailUnlockErrorOneEvent {
  @override
  List<Object?> get props => [];
}
