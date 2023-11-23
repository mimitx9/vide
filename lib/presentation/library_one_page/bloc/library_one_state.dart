// ignore_for_file: must_be_immutable

part of 'library_one_bloc.dart';

/// Represents the state of LibraryOne in the application.
class LibraryOneState extends Equatable {
  LibraryOneState({this.libraryOneModelObj});

  LibraryOneModel? libraryOneModelObj;

  @override
  List<Object?> get props => [
        libraryOneModelObj,
      ];
  LibraryOneState copyWith({LibraryOneModel? libraryOneModelObj}) {
    return LibraryOneState(
      libraryOneModelObj: libraryOneModelObj ?? this.libraryOneModelObj,
    );
  }
}
