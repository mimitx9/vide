// ignore_for_file: must_be_immutable

part of 'library_filters_two_bloc.dart';

/// Represents the state of LibraryFiltersTwo in the application.
class LibraryFiltersTwoState extends Equatable {
  LibraryFiltersTwoState({
    this.locationController,
    this.dentalHygieneController,
    this.dentalMaterialsController,
    this.group197Controller,
    this.dentalTechnologyController,
    this.endodonticsController,
    this.estheticDentristryController,
    this.implantologyController,
    this.libraryFiltersTwoModelObj,
  });

  TextEditingController? locationController;

  TextEditingController? dentalHygieneController;

  TextEditingController? dentalMaterialsController;

  TextEditingController? group197Controller;

  TextEditingController? dentalTechnologyController;

  TextEditingController? endodonticsController;

  TextEditingController? estheticDentristryController;

  TextEditingController? implantologyController;

  LibraryFiltersTwoModel? libraryFiltersTwoModelObj;

  @override
  List<Object?> get props => [
        locationController,
        dentalHygieneController,
        dentalMaterialsController,
        group197Controller,
        dentalTechnologyController,
        endodonticsController,
        estheticDentristryController,
        implantologyController,
        libraryFiltersTwoModelObj,
      ];
  LibraryFiltersTwoState copyWith({
    TextEditingController? locationController,
    TextEditingController? dentalHygieneController,
    TextEditingController? dentalMaterialsController,
    TextEditingController? group197Controller,
    TextEditingController? dentalTechnologyController,
    TextEditingController? endodonticsController,
    TextEditingController? estheticDentristryController,
    TextEditingController? implantologyController,
    LibraryFiltersTwoModel? libraryFiltersTwoModelObj,
  }) {
    return LibraryFiltersTwoState(
      locationController: locationController ?? this.locationController,
      dentalHygieneController:
          dentalHygieneController ?? this.dentalHygieneController,
      dentalMaterialsController:
          dentalMaterialsController ?? this.dentalMaterialsController,
      group197Controller: group197Controller ?? this.group197Controller,
      dentalTechnologyController:
          dentalTechnologyController ?? this.dentalTechnologyController,
      endodonticsController:
          endodonticsController ?? this.endodonticsController,
      estheticDentristryController:
          estheticDentristryController ?? this.estheticDentristryController,
      implantologyController:
          implantologyController ?? this.implantologyController,
      libraryFiltersTwoModelObj:
          libraryFiltersTwoModelObj ?? this.libraryFiltersTwoModelObj,
    );
  }
}
