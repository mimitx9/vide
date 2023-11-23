// ignore_for_file: must_be_immutable

part of 'library_category_bloc.dart';

/// Represents the state of LibraryCategory in the application.
class LibraryCategoryState extends Equatable {
  LibraryCategoryState({this.libraryCategoryModelObj});

  LibraryCategoryModel? libraryCategoryModelObj;

  @override
  List<Object?> get props => [
        libraryCategoryModelObj,
      ];
  LibraryCategoryState copyWith(
      {LibraryCategoryModel? libraryCategoryModelObj}) {
    return LibraryCategoryState(
      libraryCategoryModelObj:
          libraryCategoryModelObj ?? this.libraryCategoryModelObj,
    );
  }
}
