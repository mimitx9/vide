import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:onito_s_application1/presentation/library_filters_page/models/library_filters_model.dart';
part 'library_filters_event.dart';
part 'library_filters_state.dart';

/// A bloc that manages the state of a LibraryFilters according to the event that is dispatched to it.
class LibraryFiltersBloc
    extends Bloc<LibraryFiltersEvent, LibraryFiltersState> {
  LibraryFiltersBloc(LibraryFiltersState initialState) : super(initialState) {
    on<LibraryFiltersInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LibraryFiltersInitialEvent event,
    Emitter<LibraryFiltersState> emit,
  ) async {
    emit(state.copyWith(
      locationController: TextEditingController(),
      thnphtController: TextEditingController(),
      phttingController: TextEditingController(),
      tingController: TextEditingController(),
      trntingController: TextEditingController(),
    ));
  }
}
