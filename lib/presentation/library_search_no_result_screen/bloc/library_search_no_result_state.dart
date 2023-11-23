// ignore_for_file: must_be_immutable

part of 'library_search_no_result_bloc.dart';

/// Represents the state of LibrarySearchNoResult in the application.
class LibrarySearchNoResultState extends Equatable {
  LibrarySearchNoResultState({
    this.unionController,
    this.librarySearchNoResultModelObj,
  });

  TextEditingController? unionController;

  LibrarySearchNoResultModel? librarySearchNoResultModelObj;

  @override
  List<Object?> get props => [
        unionController,
        librarySearchNoResultModelObj,
      ];
  LibrarySearchNoResultState copyWith({
    TextEditingController? unionController,
    LibrarySearchNoResultModel? librarySearchNoResultModelObj,
  }) {
    return LibrarySearchNoResultState(
      unionController: unionController ?? this.unionController,
      librarySearchNoResultModelObj:
          librarySearchNoResultModelObj ?? this.librarySearchNoResultModelObj,
    );
  }
}
