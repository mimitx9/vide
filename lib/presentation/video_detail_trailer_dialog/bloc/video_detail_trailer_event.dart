// ignore_for_file: must_be_immutable

part of 'video_detail_trailer_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VideoDetailTrailer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VideoDetailTrailerEvent extends Equatable {}

/// Event that is dispatched when the VideoDetailTrailer widget is first created.
class VideoDetailTrailerInitialEvent extends VideoDetailTrailerEvent {
  @override
  List<Object?> get props => [];
}
