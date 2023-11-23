// ignore_for_file: must_be_immutable

part of 'library_search_result_one_bloc.dart';

/// Represents the state of LibrarySearchResultOne in the application.
class LibrarySearchResultOneState extends Equatable {
  LibrarySearchResultOneState({this.librarySearchResultOneModelObj});

  LibrarySearchResultOneModel? librarySearchResultOneModelObj;

  @override
  List<Object?> get props => [
        librarySearchResultOneModelObj,
      ];
  LibrarySearchResultOneState copyWith(
      {LibrarySearchResultOneModel? librarySearchResultOneModelObj}) {
    return LibrarySearchResultOneState(
      librarySearchResultOneModelObj:
          librarySearchResultOneModelObj ?? this.librarySearchResultOneModelObj,
    );
  }
}
