// ignore_for_file: must_be_immutable

part of 'video_detail_author_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VideoDetailAuthorTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VideoDetailAuthorTabContainerEvent extends Equatable {}

/// Event that is dispatched when the VideoDetailAuthorTabContainer widget is first created.
class VideoDetailAuthorTabContainerInitialEvent
    extends VideoDetailAuthorTabContainerEvent {
  @override
  List<Object?> get props => [];
}
