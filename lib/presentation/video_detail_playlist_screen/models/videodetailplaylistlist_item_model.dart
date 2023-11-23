import '../../../core/app_export.dart';/// This class is used in the [videodetailplaylistlist_item_widget] screen.
class VideodetailplaylistlistItemModel {VideodetailplaylistlistItemModel({this.image, this.time, this.treatmentPlanning, this.myList, this.download, this.id, }) { image = image  ?? ImageConstant.imgRectangle425;time = time  ?? "19:45";treatmentPlanning = treatmentPlanning  ?? "Treatment Planning in the Digital Era - Digital Patient Concept";myList = myList  ?? "My list";download = download  ?? "Download";id = id  ?? ""; }

String? image;

String? time;

String? treatmentPlanning;

String? myList;

String? download;

String? id;

 }
