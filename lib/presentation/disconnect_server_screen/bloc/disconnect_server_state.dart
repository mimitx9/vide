// ignore_for_file: must_be_immutable

part of 'disconnect_server_bloc.dart';

/// Represents the state of DisconnectServer in the application.
class DisconnectServerState extends Equatable {
  DisconnectServerState({this.disconnectServerModelObj});

  DisconnectServerModel? disconnectServerModelObj;

  @override
  List<Object?> get props => [
        disconnectServerModelObj,
      ];
  DisconnectServerState copyWith(
      {DisconnectServerModel? disconnectServerModelObj}) {
    return DisconnectServerState(
      disconnectServerModelObj:
          disconnectServerModelObj ?? this.disconnectServerModelObj,
    );
  }
}
