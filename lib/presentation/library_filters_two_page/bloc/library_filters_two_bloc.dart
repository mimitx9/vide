import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:onito_s_application1/presentation/library_filters_two_page/models/library_filters_two_model.dart';
part 'library_filters_two_event.dart';
part 'library_filters_two_state.dart';

/// A bloc that manages the state of a LibraryFiltersTwo according to the event that is dispatched to it.
class LibraryFiltersTwoBloc
    extends Bloc<LibraryFiltersTwoEvent, LibraryFiltersTwoState> {
  LibraryFiltersTwoBloc(LibraryFiltersTwoState initialState)
      : super(initialState) {
    on<LibraryFiltersTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LibraryFiltersTwoInitialEvent event,
    Emitter<LibraryFiltersTwoState> emit,
  ) async {
    emit(state.copyWith(
      locationController: TextEditingController(),
      dentalHygieneController: TextEditingController(),
      dentalMaterialsController: TextEditingController(),
      group197Controller: TextEditingController(),
      dentalTechnologyController: TextEditingController(),
      endodonticsController: TextEditingController(),
      estheticDentristryController: TextEditingController(),
      implantologyController: TextEditingController(),
    ));
  }
}
