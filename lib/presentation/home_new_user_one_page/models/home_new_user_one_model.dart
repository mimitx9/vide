// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'close_item_model.dart';import '../../../core/app_export.dart';import 'homenewuserone_item_model.dart';/// This class defines the variables used in the [home_new_user_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeNewUserOneModel extends Equatable {HomeNewUserOneModel({this.closeItemList = const [], this.homenewuseroneItemList = const [], }) {  }

List<CloseItemModel> closeItemList;

List<HomenewuseroneItemModel> homenewuseroneItemList;

HomeNewUserOneModel copyWith({List<CloseItemModel>? closeItemList, List<HomenewuseroneItemModel>? homenewuseroneItemList, }) { return HomeNewUserOneModel(
closeItemList : closeItemList ?? this.closeItemList,
homenewuseroneItemList : homenewuseroneItemList ?? this.homenewuseroneItemList,
); } 
@override List<Object?> get props => [closeItemList,homenewuseroneItemList];
 }
