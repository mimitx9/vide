// ignore_for_file: must_be_immutable

part of 'library_search_result_bloc.dart';

/// Represents the state of LibrarySearchResult in the application.
class LibrarySearchResultState extends Equatable {
  LibrarySearchResultState({
    this.unionController,
    this.librarySearchResultModelObj,
  });

  TextEditingController? unionController;

  LibrarySearchResultModel? librarySearchResultModelObj;

  @override
  List<Object?> get props => [
        unionController,
        librarySearchResultModelObj,
      ];
  LibrarySearchResultState copyWith({
    TextEditingController? unionController,
    LibrarySearchResultModel? librarySearchResultModelObj,
  }) {
    return LibrarySearchResultState(
      unionController: unionController ?? this.unionController,
      librarySearchResultModelObj:
          librarySearchResultModelObj ?? this.librarySearchResultModelObj,
    );
  }
}
