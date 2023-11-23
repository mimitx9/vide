import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:onito_s_application1/presentation/home_recent_screen/models/home_recent_model.dart';
part 'home_recent_event.dart';
part 'home_recent_state.dart';

/// A bloc that manages the state of a HomeRecent according to the event that is dispatched to it.
class HomeRecentBloc extends Bloc<HomeRecentEvent, HomeRecentState> {
  HomeRecentBloc(HomeRecentState initialState) : super(initialState) {
    on<HomeRecentInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeRecentInitialEvent event,
    Emitter<HomeRecentState> emit,
  ) async {}
}
