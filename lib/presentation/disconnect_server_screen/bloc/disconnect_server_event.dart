// ignore_for_file: must_be_immutable

part of 'disconnect_server_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DisconnectServer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DisconnectServerEvent extends Equatable {}

/// Event that is dispatched when the DisconnectServer widget is first created.
class DisconnectServerInitialEvent extends DisconnectServerEvent {
  @override
  List<Object?> get props => [];
}
