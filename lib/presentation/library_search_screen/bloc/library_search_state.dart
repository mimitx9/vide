// ignore_for_file: must_be_immutable

part of 'library_search_bloc.dart';

/// Represents the state of LibrarySearch in the application.
class LibrarySearchState extends Equatable {
  LibrarySearchState({
    this.unionController,
    this.radioGroup = "",
    this.radioGroup1 = "",
    this.librarySearchModelObj,
  });

  TextEditingController? unionController;

  LibrarySearchModel? librarySearchModelObj;

  String radioGroup;

  String radioGroup1;

  @override
  List<Object?> get props => [
        unionController,
        radioGroup,
        radioGroup1,
        librarySearchModelObj,
      ];
  LibrarySearchState copyWith({
    TextEditingController? unionController,
    String? radioGroup,
    String? radioGroup1,
    LibrarySearchModel? librarySearchModelObj,
  }) {
    return LibrarySearchState(
      unionController: unionController ?? this.unionController,
      radioGroup: radioGroup ?? this.radioGroup,
      radioGroup1: radioGroup1 ?? this.radioGroup1,
      librarySearchModelObj:
          librarySearchModelObj ?? this.librarySearchModelObj,
    );
  }
}
