// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'videodetailplaylistlist_item_model.dart';/// This class defines the variables used in the [video_detail_playlist_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class VideoDetailPlaylistModel extends Equatable {VideoDetailPlaylistModel({this.videodetailplaylistlistItemList = const []}) {  }

List<VideodetailplaylistlistItemModel> videodetailplaylistlistItemList;

VideoDetailPlaylistModel copyWith({List<VideodetailplaylistlistItemModel>? videodetailplaylistlistItemList}) { return VideoDetailPlaylistModel(
videodetailplaylistlistItemList : videodetailplaylistlistItemList ?? this.videodetailplaylistlistItemList,
); } 
@override List<Object?> get props => [videodetailplaylistlistItemList];
 }
