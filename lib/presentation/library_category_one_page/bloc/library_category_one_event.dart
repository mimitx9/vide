// ignore_for_file: must_be_immutable

part of 'library_category_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LibraryCategoryOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LibraryCategoryOneEvent extends Equatable {}

/// Event that is dispatched when the LibraryCategoryOne widget is first created.
class LibraryCategoryOneInitialEvent extends LibraryCategoryOneEvent {
  @override
  List<Object?> get props => [];
}
