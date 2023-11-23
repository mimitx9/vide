// ignore_for_file: must_be_immutable

part of 'library_category_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LibraryCategory widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LibraryCategoryEvent extends Equatable {}

/// Event that is dispatched when the LibraryCategory widget is first created.
class LibraryCategoryInitialEvent extends LibraryCategoryEvent {
  @override
  List<Object?> get props => [];
}
