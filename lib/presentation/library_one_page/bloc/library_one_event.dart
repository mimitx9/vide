// ignore_for_file: must_be_immutable

part of 'library_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LibraryOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LibraryOneEvent extends Equatable {}

/// Event that is dispatched when the LibraryOne widget is first created.
class LibraryOneInitialEvent extends LibraryOneEvent {
  @override
  List<Object?> get props => [];
}
