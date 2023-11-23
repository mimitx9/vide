// ignore_for_file: must_be_immutable

part of 'video_detail_unlock_error_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VideoDetailUnlockError widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VideoDetailUnlockErrorEvent extends Equatable {}

/// Event that is dispatched when the VideoDetailUnlockError widget is first created.
class VideoDetailUnlockErrorInitialEvent extends VideoDetailUnlockErrorEvent {
  @override
  List<Object?> get props => [];
}
