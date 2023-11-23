// ignore_for_file: must_be_immutable

part of 'library_search_result_one_tab_container_bloc.dart';

/// Represents the state of LibrarySearchResultOneTabContainer in the application.
class LibrarySearchResultOneTabContainerState extends Equatable {
  LibrarySearchResultOneTabContainerState({
    this.unionController,
    this.librarySearchResultOneTabContainerModelObj,
  });

  TextEditingController? unionController;

  LibrarySearchResultOneTabContainerModel?
      librarySearchResultOneTabContainerModelObj;

  @override
  List<Object?> get props => [
        unionController,
        librarySearchResultOneTabContainerModelObj,
      ];
  LibrarySearchResultOneTabContainerState copyWith({
    TextEditingController? unionController,
    LibrarySearchResultOneTabContainerModel?
        librarySearchResultOneTabContainerModelObj,
  }) {
    return LibrarySearchResultOneTabContainerState(
      unionController: unionController ?? this.unionController,
      librarySearchResultOneTabContainerModelObj:
          librarySearchResultOneTabContainerModelObj ??
              this.librarySearchResultOneTabContainerModelObj,
    );
  }
}
