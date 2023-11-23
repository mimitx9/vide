import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:onito_s_application1/presentation/disconnect_server_screen/models/disconnect_server_model.dart';
part 'disconnect_server_event.dart';
part 'disconnect_server_state.dart';

/// A bloc that manages the state of a DisconnectServer according to the event that is dispatched to it.
class DisconnectServerBloc
    extends Bloc<DisconnectServerEvent, DisconnectServerState> {
  DisconnectServerBloc(DisconnectServerState initialState)
      : super(initialState) {
    on<DisconnectServerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DisconnectServerInitialEvent event,
    Emitter<DisconnectServerState> emit,
  ) async {}
}
