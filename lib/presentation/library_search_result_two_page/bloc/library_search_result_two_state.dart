// ignore_for_file: must_be_immutable

part of 'library_search_result_two_bloc.dart';

/// Represents the state of LibrarySearchResultTwo in the application.
class LibrarySearchResultTwoState extends Equatable {
  LibrarySearchResultTwoState({this.librarySearchResultTwoModelObj});

  LibrarySearchResultTwoModel? librarySearchResultTwoModelObj;

  @override
  List<Object?> get props => [
        librarySearchResultTwoModelObj,
      ];
  LibrarySearchResultTwoState copyWith(
      {LibrarySearchResultTwoModel? librarySearchResultTwoModelObj}) {
    return LibrarySearchResultTwoState(
      librarySearchResultTwoModelObj:
          librarySearchResultTwoModelObj ?? this.librarySearchResultTwoModelObj,
    );
  }
}
