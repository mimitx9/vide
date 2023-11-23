// ignore_for_file: must_be_immutable

part of 'video_detail_unlock_success_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VideoDetailUnlockSuccess widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VideoDetailUnlockSuccessEvent extends Equatable {}

/// Event that is dispatched when the VideoDetailUnlockSuccess widget is first created.
class VideoDetailUnlockSuccessInitialEvent
    extends VideoDetailUnlockSuccessEvent {
  @override
  List<Object?> get props => [];
}
