// ignore_for_file: must_be_immutable

part of 'video_detail_author_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VideoDetailAuthor widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VideoDetailAuthorEvent extends Equatable {}

/// Event that is dispatched when the VideoDetailAuthor widget is first created.
class VideoDetailAuthorInitialEvent extends VideoDetailAuthorEvent {
  @override
  List<Object?> get props => [];
}
