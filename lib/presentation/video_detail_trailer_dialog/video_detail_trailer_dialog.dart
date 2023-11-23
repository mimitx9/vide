import 'bloc/video_detail_trailer_bloc.dart';
import 'models/video_detail_trailer_model.dart';
import 'package:flutter/material.dart';
import 'package:onito_s_application1/core/app_export.dart';
import 'package:onito_s_application1/widgets/custom_elevated_button.dart';
import 'package:onito_s_application1/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class VideoDetailTrailerDialog extends StatelessWidget {
  const VideoDetailTrailerDialog({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<VideoDetailTrailerBloc>(
      create: (context) => VideoDetailTrailerBloc(VideoDetailTrailerState(
        videoDetailTrailerModelObj: VideoDetailTrailerModel(),
      ))
        ..add(VideoDetailTrailerInitialEvent()),
      child: VideoDetailTrailerDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: 350.h,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 24.v),
                  padding: EdgeInsets.all(12.h),
                  decoration: AppDecoration.gradientOnErrorToOrange.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder50,
                  ),
                  child: Container(
                    height: 76.adaptSize,
                    width: 76.adaptSize,
                    padding: EdgeInsets.all(11.h),
                    decoration: AppDecoration.gradientOnErrorToOrange.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder38,
                    ),
                    child: CustomIconButton(
                      height: 54.adaptSize,
                      width: 54.adaptSize,
                      padding: EdgeInsets.all(15.h),
                      decoration: IconButtonStyleHelper.gradientOnErrorToOrange,
                      alignment: Alignment.center,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGroup51,
                      ),
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgUnionPrimary,
                  height: 25.adaptSize,
                  width: 25.adaptSize,
                  margin: EdgeInsets.only(
                    left: 79.h,
                    bottom: 98.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 22.v),
          Text(
            "lbl_class_pro".tr,
            style: theme.textTheme.headlineLarge,
          ),
          SizedBox(height: 18.v),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "msg_m_kh_a_b_i_h_c2".tr,
                  style: CustomTextStyles.bodyLarge16,
                ),
                TextSpan(
                  text: "lbl_5_key".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 46.v),
          CustomElevatedButton(
            height: 60.v,
            width: 190.h,
            text: "lbl_m_kh_a".tr.toUpperCase(),
            buttonStyle: CustomButtonStyles.fillPrimary,
            buttonTextStyle: theme.textTheme.titleSmall!,
          ),
          SizedBox(height: 29.v),
          Text(
            "lbl_sau".tr,
            style: CustomTextStyles.titleSmallPrimary_1,
          ),
          SizedBox(height: 25.v),
        ],
      ),
    );
  }
}
