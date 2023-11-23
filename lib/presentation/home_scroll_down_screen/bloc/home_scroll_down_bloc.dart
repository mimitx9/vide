import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:onito_s_application1/presentation/home_scroll_down_screen/models/home_scroll_down_model.dart';
part 'home_scroll_down_event.dart';
part 'home_scroll_down_state.dart';

/// A bloc that manages the state of a HomeScrollDown according to the event that is dispatched to it.
class HomeScrollDownBloc
    extends Bloc<HomeScrollDownEvent, HomeScrollDownState> {
  HomeScrollDownBloc(HomeScrollDownState initialState) : super(initialState) {
    on<HomeScrollDownInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeScrollDownInitialEvent event,
    Emitter<HomeScrollDownState> emit,
  ) async {}
}
