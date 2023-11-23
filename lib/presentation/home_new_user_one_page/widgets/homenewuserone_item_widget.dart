import '../models/homenewuserone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:onito_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class HomenewuseroneItemWidget extends StatelessWidget {
  HomenewuseroneItemWidget(
    this.homenewuseroneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HomenewuseroneItemModel homenewuseroneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.all(1.h),
        child: Row(
          children: [
            SizedBox(
              height: 108.v,
              width: 180.h,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CustomImageView(
                    imagePath: homenewuseroneItemModelObj?.image,
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
                        homenewuseroneItemModelObj.time!,
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
                bottom: 4.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 161.h,
                    child: Text(
                      homenewuseroneItemModelObj.treatmentPlanning!,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  SizedBox(height: 33.v),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Row(
                      children: [
                        Opacity(
                          opacity: 0.5,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgUnionPrimary,
                            height: 14.adaptSize,
                            width: 14.adaptSize,
                            margin: EdgeInsets.only(top: 1.v),
                          ),
                        ),
                        Opacity(
                          opacity: 0.5,
                          child: Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: Text(
                              homenewuseroneItemModelObj.gb!,
                              style: CustomTextStyles
                                  .bodySmallOnPrimaryContainer_1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
