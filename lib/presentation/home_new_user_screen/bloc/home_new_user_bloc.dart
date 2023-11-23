import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:onito_s_application1/presentation/home_new_user_screen/models/home_new_user_model.dart';
part 'home_new_user_event.dart';
part 'home_new_user_state.dart';

/// A bloc that manages the state of a HomeNewUser according to the event that is dispatched to it.
class HomeNewUserBloc extends Bloc<HomeNewUserEvent, HomeNewUserState> {
  HomeNewUserBloc(HomeNewUserState initialState) : super(initialState) {
    on<HomeNewUserInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeNewUserInitialEvent event,
    Emitter<HomeNewUserState> emit,
  ) async {}
}
