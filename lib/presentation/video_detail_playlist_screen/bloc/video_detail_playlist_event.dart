// ignore_for_file: must_be_immutable

part of 'video_detail_playlist_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VideoDetailPlaylist widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VideoDetailPlaylistEvent extends Equatable {}

/// Event that is dispatched when the VideoDetailPlaylist widget is first created.
class VideoDetailPlaylistInitialEvent extends VideoDetailPlaylistEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends VideoDetailPlaylistEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
