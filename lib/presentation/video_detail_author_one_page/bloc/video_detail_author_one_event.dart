// ignore_for_file: must_be_immutable

part of 'video_detail_author_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VideoDetailAuthorOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VideoDetailAuthorOneEvent extends Equatable {}

/// Event that is dispatched when the VideoDetailAuthorOne widget is first created.
class VideoDetailAuthorOneInitialEvent extends VideoDetailAuthorOneEvent {
  @override
  List<Object?> get props => [];
}
