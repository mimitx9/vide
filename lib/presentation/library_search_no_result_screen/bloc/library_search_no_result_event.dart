// ignore_for_file: must_be_immutable

part of 'library_search_no_result_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LibrarySearchNoResult widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LibrarySearchNoResultEvent extends Equatable {}

/// Event that is dispatched when the LibrarySearchNoResult widget is first created.
class LibrarySearchNoResultInitialEvent extends LibrarySearchNoResultEvent {
  @override
  List<Object?> get props => [];
}
