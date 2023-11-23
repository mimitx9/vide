// ignore_for_file: must_be_immutable

part of 'library_filters_one_bloc.dart';

/// Represents the state of LibraryFiltersOne in the application.
class LibraryFiltersOneState extends Equatable {
  LibraryFiltersOneState({this.libraryFiltersOneModelObj});

  LibraryFiltersOneModel? libraryFiltersOneModelObj;

  @override
  List<Object?> get props => [
        libraryFiltersOneModelObj,
      ];
  LibraryFiltersOneState copyWith(
      {LibraryFiltersOneModel? libraryFiltersOneModelObj}) {
    return LibraryFiltersOneState(
      libraryFiltersOneModelObj:
          libraryFiltersOneModelObj ?? this.libraryFiltersOneModelObj,
    );
  }
}
