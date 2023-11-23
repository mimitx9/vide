import '../models/videodetailplaylistlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:onito_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class VideodetailplaylistlistItemWidget extends StatelessWidget {
  VideodetailplaylistlistItemWidget(
    this.videodetailplaylistlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  VideodetailplaylistlistItemModel videodetailplaylistlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 108.v,
          width: 180.h,
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              CustomImageView(
                imagePath: videodetailplaylistlistItemModelObj?.image,
                height: 108.v,
                width: 180.h,
                radius: BorderRadius.circular(
                  5.h,
                ),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: 34.h,
                  margin: EdgeInsets.only(
                    right: 7.h,
                    bottom: 6.v,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 3.h,
                    vertical: 1.v,
                  ),
                  decoration: AppDecoration.fillBlack900.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder2,
                  ),
                  child: Text(
                    videodetailplaylistlistItemModelObj.time!,
                    style: CustomTextStyles.bodySmall10,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 14.h,
            top: 2.v,
            bottom: 3.v,
          ),
          child: Column(
            children: [
              SizedBox(
                width: 161.h,
                child: Text(
                  videodetailplaylistlistItemModelObj.treatmentPlanning!,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              SizedBox(height: 33.v),
              Container(
                width: 154.h,
                margin: EdgeInsets.only(left: 6.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgFacebook,
                      height: 10.adaptSize,
                      width: 10.adaptSize,
                      margin: EdgeInsets.only(
                        top: 2.v,
                        bottom: 3.v,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 6.h,
                        top: 1.v,
                      ),
                      child: Text(
                        videodetailplaylistlistItemModelObj.myList!,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    Spacer(),
                    CustomImageView(
                      imagePath: ImageConstant.imgArrow2,
                      height: 10.v,
                      width: 1.h,
                      margin: EdgeInsets.only(
                        top: 2.v,
                        bottom: 3.v,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 9.h),
                      child: Text(
                        videodetailplaylistlistItemModelObj.download!,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
