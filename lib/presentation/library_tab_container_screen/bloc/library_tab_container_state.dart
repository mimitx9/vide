// ignore_for_file: must_be_immutable

part of 'library_tab_container_bloc.dart';

/// Represents the state of LibraryTabContainer in the application.
class LibraryTabContainerState extends Equatable {
  LibraryTabContainerState({
    this.searchController,
    this.libraryTabContainerModelObj,
  });

  TextEditingController? searchController;

  LibraryTabContainerModel? libraryTabContainerModelObj;

  @override
  List<Object?> get props => [
        searchController,
        libraryTabContainerModelObj,
      ];
  LibraryTabContainerState copyWith({
    TextEditingController? searchController,
    LibraryTabContainerModel? libraryTabContainerModelObj,
  }) {
    return LibraryTabContainerState(
      searchController: searchController ?? this.searchController,
      libraryTabContainerModelObj:
          libraryTabContainerModelObj ?? this.libraryTabContainerModelObj,
    );
  }
}
