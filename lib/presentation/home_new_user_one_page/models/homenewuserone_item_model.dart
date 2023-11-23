import '../../../core/app_export.dart';/// This class is used in the [homenewuserone_item_widget] screen.
class HomenewuseroneItemModel {HomenewuseroneItemModel({this.image, this.time, this.treatmentPlanning, this.gb, this.id, }) { image = image  ?? ImageConstant.imgRectangle425;time = time  ?? "19:45";treatmentPlanning = treatmentPlanning  ?? "Treatment Planning in the Digital Era - Digital Patient Concept";gb = gb  ?? "Gỡ bỏ";id = id  ?? ""; }

String? image;

String? time;

String? treatmentPlanning;

String? gb;

String? id;

 }
