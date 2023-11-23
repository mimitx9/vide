// ignore_for_file: must_be_immutable

part of 'library_one_tab_container_bloc.dart';

/// Represents the state of LibraryOneTabContainer in the application.
class LibraryOneTabContainerState extends Equatable {
  LibraryOneTabContainerState({
    this.searchController,
    this.libraryOneTabContainerModelObj,
  });

  TextEditingController? searchController;

  LibraryOneTabContainerModel? libraryOneTabContainerModelObj;

  @override
  List<Object?> get props => [
        searchController,
        libraryOneTabContainerModelObj,
      ];
  LibraryOneTabContainerState copyWith({
    TextEditingController? searchController,
    LibraryOneTabContainerModel? libraryOneTabContainerModelObj,
  }) {
    return LibraryOneTabContainerState(
      searchController: searchController ?? this.searchController,
      libraryOneTabContainerModelObj:
          libraryOneTabContainerModelObj ?? this.libraryOneTabContainerModelObj,
    );
  }
}
