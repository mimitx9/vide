// ignore_for_file: must_be_immutable

part of 'library_category_one_bloc.dart';

/// Represents the state of LibraryCategoryOne in the application.
class LibraryCategoryOneState extends Equatable {
  LibraryCategoryOneState({this.libraryCategoryOneModelObj});

  LibraryCategoryOneModel? libraryCategoryOneModelObj;

  @override
  List<Object?> get props => [
        libraryCategoryOneModelObj,
      ];
  LibraryCategoryOneState copyWith(
      {LibraryCategoryOneModel? libraryCategoryOneModelObj}) {
    return LibraryCategoryOneState(
      libraryCategoryOneModelObj:
          libraryCategoryOneModelObj ?? this.libraryCategoryOneModelObj,
    );
  }
}
