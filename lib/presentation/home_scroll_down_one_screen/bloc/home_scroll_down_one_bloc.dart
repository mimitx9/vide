import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:onito_s_application1/presentation/home_scroll_down_one_screen/models/home_scroll_down_one_model.dart';
part 'home_scroll_down_one_event.dart';
part 'home_scroll_down_one_state.dart';

/// A bloc that manages the state of a HomeScrollDownOne according to the event that is dispatched to it.
class HomeScrollDownOneBloc
    extends Bloc<HomeScrollDownOneEvent, HomeScrollDownOneState> {
  HomeScrollDownOneBloc(HomeScrollDownOneState initialState)
      : super(initialState) {
    on<HomeScrollDownOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeScrollDownOneInitialEvent event,
    Emitter<HomeScrollDownOneState> emit,
  ) async {}
}
