// ignore_for_file: must_be_immutable

part of 'home_new_user_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomeNewUserOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomeNewUserOneEvent extends Equatable {}

/// Event that is dispatched when the HomeNewUserOne widget is first created.
class HomeNewUserOneInitialEvent extends HomeNewUserOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends HomeNewUserOneEvent {
  UpdateChipViewEvent({
    required this.index,
    this.isSelected,
  });

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [
        index,
        isSelected,
      ];
}
