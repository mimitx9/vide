// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'librarysearchresult_item_model.dart';/// This class defines the variables used in the [library_search_result_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class LibrarySearchResultModel extends Equatable {LibrarySearchResultModel({this.librarysearchresultItemList = const []}) {  }

List<LibrarysearchresultItemModel> librarysearchresultItemList;

LibrarySearchResultModel copyWith({List<LibrarysearchresultItemModel>? librarysearchresultItemList}) { return LibrarySearchResultModel(
librarysearchresultItemList : librarysearchresultItemList ?? this.librarysearchresultItemList,
); } 
@override List<Object?> get props => [librarysearchresultItemList];
 }
