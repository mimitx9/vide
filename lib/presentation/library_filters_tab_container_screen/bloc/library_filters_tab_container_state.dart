// ignore_for_file: must_be_immutable

part of 'library_filters_tab_container_bloc.dart';

/// Represents the state of LibraryFiltersTabContainer in the application.
class LibraryFiltersTabContainerState extends Equatable {
  LibraryFiltersTabContainerState({
    this.searchController,
    this.menuController,
    this.libraryFiltersTabContainerModelObj,
  });

  TextEditingController? searchController;

  TextEditingController? menuController;

  LibraryFiltersTabContainerModel? libraryFiltersTabContainerModelObj;

  @override
  List<Object?> get props => [
        searchController,
        menuController,
        libraryFiltersTabContainerModelObj,
      ];
  LibraryFiltersTabContainerState copyWith({
    TextEditingController? searchController,
    TextEditingController? menuController,
    LibraryFiltersTabContainerModel? libraryFiltersTabContainerModelObj,
  }) {
    return LibraryFiltersTabContainerState(
      searchController: searchController ?? this.searchController,
      menuController: menuController ?? this.menuController,
      libraryFiltersTabContainerModelObj: libraryFiltersTabContainerModelObj ??
          this.libraryFiltersTabContainerModelObj,
    );
  }
}
