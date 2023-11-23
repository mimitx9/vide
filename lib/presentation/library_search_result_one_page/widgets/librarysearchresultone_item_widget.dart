import '../models/librarysearchresultone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:onito_s_application1/core/app_export.dart';
import 'package:onito_s_application1/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class LibrarysearchresultoneItemWidget extends StatelessWidget {
  LibrarysearchresultoneItemWidget(
    this.librarysearchresultoneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LibrarysearchresultoneItemModel librarysearchresultoneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 108.v,
          width: 180.h,
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              CustomImageView(
                imagePath: librarysearchresultoneItemModelObj?.image,
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
                    librarysearchresultoneItemModelObj.time!,
                    style: CustomTextStyles.bodySmall10,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 196.h,
                child: Text(
                  librarysearchresultoneItemModelObj.cLINICALVIDEORoot!,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              SizedBox(height: 29.v),
              CustomElevatedButton(
                width: 100.h,
                text: "lbl_orthodontics".tr,
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 5.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      2.h,
                    ),
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGoogle,
                    height: 10.adaptSize,
                    width: 10.adaptSize,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
