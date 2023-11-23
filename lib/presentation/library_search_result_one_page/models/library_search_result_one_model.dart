// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'librarysearchresultone_item_model.dart';/// This class defines the variables used in the [library_search_result_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class LibrarySearchResultOneModel extends Equatable {LibrarySearchResultOneModel({this.librarysearchresultoneItemList = const []}) {  }

List<LibrarysearchresultoneItemModel> librarysearchresultoneItemList;

LibrarySearchResultOneModel copyWith({List<LibrarysearchresultoneItemModel>? librarysearchresultoneItemList}) { return LibrarySearchResultOneModel(
librarysearchresultoneItemList : librarysearchresultoneItemList ?? this.librarysearchresultoneItemList,
); } 
@override List<Object?> get props => [librarysearchresultoneItemList];
 }
