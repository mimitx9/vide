// ignore_for_file: must_be_immutable

part of 'video_detail_class_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VideoDetailClassTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VideoDetailClassTwoEvent extends Equatable {}

/// Event that is dispatched when the VideoDetailClassTwo widget is first created.
class VideoDetailClassTwoInitialEvent extends VideoDetailClassTwoEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends VideoDetailClassTwoEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
