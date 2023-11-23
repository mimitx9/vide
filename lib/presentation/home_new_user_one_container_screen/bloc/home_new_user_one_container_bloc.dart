import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:onito_s_application1/presentation/home_new_user_one_container_screen/models/home_new_user_one_container_model.dart';part 'home_new_user_one_container_event.dart';part 'home_new_user_one_container_state.dart';/// A bloc that manages the state of a HomeNewUserOneContainer according to the event that is dispatched to it.
class HomeNewUserOneContainerBloc extends Bloc<HomeNewUserOneContainerEvent, HomeNewUserOneContainerState> {HomeNewUserOneContainerBloc(HomeNewUserOneContainerState initialState) : super(initialState) { on<HomeNewUserOneContainerInitialEvent>(_onInitialize); }

_onInitialize(HomeNewUserOneContainerInitialEvent event, Emitter<HomeNewUserOneContainerState> emit, ) async  {  } 
 }
