import 'package:flutter/material.dart';
import 'package:onito_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class AppbarTrailingImageOne extends StatelessWidget {
  AppbarTrailingImageOne({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadiusStyle.roundedBorder5,
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          imagePath: imagePath,
          height: 15.v,
          width: 8.h,
          fit: BoxFit.contain,
          radius: BorderRadius.circular(
            5.h,
          ),
        ),
      ),
    );
  }
}
