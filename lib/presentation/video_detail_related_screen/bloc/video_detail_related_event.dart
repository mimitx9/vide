// ignore_for_file: must_be_immutable

part of 'video_detail_related_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VideoDetailRelated widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VideoDetailRelatedEvent extends Equatable {}

/// Event that is dispatched when the VideoDetailRelated widget is first created.
class VideoDetailRelatedInitialEvent extends VideoDetailRelatedEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends VideoDetailRelatedEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
