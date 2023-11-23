// ignore_for_file: must_be_immutable

part of 'library_filters_bloc.dart';

/// Represents the state of LibraryFilters in the application.
class LibraryFiltersState extends Equatable {
  LibraryFiltersState({
    this.locationController,
    this.thnphtController,
    this.phttingController,
    this.tingController,
    this.trntingController,
    this.libraryFiltersModelObj,
  });

  TextEditingController? locationController;

  TextEditingController? thnphtController;

  TextEditingController? phttingController;

  TextEditingController? tingController;

  TextEditingController? trntingController;

  LibraryFiltersModel? libraryFiltersModelObj;

  @override
  List<Object?> get props => [
        locationController,
        thnphtController,
        phttingController,
        tingController,
        trntingController,
        libraryFiltersModelObj,
      ];
  LibraryFiltersState copyWith({
    TextEditingController? locationController,
    TextEditingController? thnphtController,
    TextEditingController? phttingController,
    TextEditingController? tingController,
    TextEditingController? trntingController,
    LibraryFiltersModel? libraryFiltersModelObj,
  }) {
    return LibraryFiltersState(
      locationController: locationController ?? this.locationController,
      thnphtController: thnphtController ?? this.thnphtController,
      phttingController: phttingController ?? this.phttingController,
      tingController: tingController ?? this.tingController,
      trntingController: trntingController ?? this.trntingController,
      libraryFiltersModelObj:
          libraryFiltersModelObj ?? this.libraryFiltersModelObj,
    );
  }
}
