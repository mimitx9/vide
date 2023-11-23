// ignore_for_file: must_be_immutable

part of 'library_search_result_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LibrarySearchResultTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LibrarySearchResultTwoEvent extends Equatable {}

/// Event that is dispatched when the LibrarySearchResultTwo widget is first created.
class LibrarySearchResultTwoInitialEvent extends LibrarySearchResultTwoEvent {
  @override
  List<Object?> get props => [];
}
