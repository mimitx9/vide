import '../home_new_user_one_page/widgets/close_item_widget.dart';
import '../home_new_user_one_page/widgets/homenewuserone_item_widget.dart';
import 'bloc/home_new_user_one_bloc.dart';
import 'models/close_item_model.dart';
import 'models/home_new_user_one_model.dart';
import 'models/homenewuserone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:onito_s_application1/core/app_export.dart';
import 'package:onito_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:onito_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:onito_s_application1/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:onito_s_application1/widgets/app_bar/appbar_trailing_button.dart';
import 'package:onito_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:onito_s_application1/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class HomeNewUserOnePage extends StatelessWidget {
  const HomeNewUserOnePage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeNewUserOneBloc>(
      create: (context) => HomeNewUserOneBloc(HomeNewUserOneState(
        homeNewUserOneModelObj: HomeNewUserOneModel(),
      ))
        ..add(HomeNewUserOneInitialEvent()),
      child: HomeNewUserOnePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 39.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildClose(context),
              SizedBox(height: 28.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_class".tr,
                          style: theme.textTheme.headlineLarge,
                        ),
                        SizedBox(height: 30.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle449,
                          height: 180.adaptSize,
                          width: 180.adaptSize,
                          radius: BorderRadius.circular(
                            5.h,
                          ),
                        ),
                        SizedBox(height: 54.v),
                        Text(
                          "lbl_video".tr,
                          style: theme.textTheme.headlineLarge,
                        ),
                        SizedBox(height: 25.v),
                        _buildHomeNewUserOne(context),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 68.v,
                      bottom: 4.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomElevatedButton(
                          width: 85.h,
                          text: "lbl_8_videos".tr,
                          leftIcon: Container(
                            margin: EdgeInsets.only(right: 8.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgComponent14,
                              height: 12.v,
                              width: 13.h,
                            ),
                          ),
                        ),
                        SizedBox(height: 17.v),
                        SizedBox(
                          width: 196.h,
                          child: Text(
                            "msg_clinical_video_root".tr,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                        SizedBox(height: 70.v),
                        Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: _buildUnion(
                            context,
                            userName: "lbl_g_b".tr,
                          ),
                        ),
                        SizedBox(height: 119.v),
                        SizedBox(
                          width: 161.h,
                          child: Text(
                            "msg_treatment_planning".tr,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                        SizedBox(height: 33.v),
                        Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: _buildUnion(
                            context,
                            userName: "lbl_g_b".tr,
                          ),
                        ),
                        SizedBox(height: 31.v),
                        SizedBox(
                          width: 196.h,
                          child: Text(
                            "msg_clinical_video_root".tr,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                        SizedBox(height: 33.v),
                        Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: _buildUnion(
                            context,
                            userName: "lbl_g_b".tr,
                          ),
                        ),
                        SizedBox(height: 30.v),
                        SizedBox(
                          width: 192.h,
                          child: Text(
                            "msg_transferring_the".tr,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                        SizedBox(height: 36.v),
                        Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: _buildUnion(
                            context,
                            userName: "lbl_g_b".tr,
                          ),
                        ),
                        SizedBox(height: 30.v),
                        SizedBox(
                          width: 183.h,
                          child: Text(
                            "msg_clinical_video_full".tr,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                        SizedBox(height: 33.v),
                        Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: _buildUnion(
                            context,
                            userName: "lbl_g_b".tr,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 28.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 65.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgGroup594,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 8.v,
          bottom: 8.v,
        ),
      ),
      title: AppbarSubtitleOne(
        text: "lbl_xu_t2".tr,
        margin: EdgeInsets.only(left: 65.h),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 8.v,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10.v,
                      bottom: 5.v,
                    ),
                    child: Column(
                      children: [
                        AppbarSubtitle(
                          text: "lbl_c_a_b_n".tr,
                        ),
                        SizedBox(height: 5.v),
                        SizedBox(
                          width: 67.h,
                          child: Divider(
                            color: theme.colorScheme.primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  AppbarTrailingButton(
                    margin: EdgeInsets.only(left: 48.h),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildClose(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 110.h),
      child: BlocSelector<HomeNewUserOneBloc, HomeNewUserOneState,
          HomeNewUserOneModel?>(
        selector: (state) => state.homeNewUserOneModelObj,
        builder: (context, homeNewUserOneModelObj) {
          return Wrap(
            runSpacing: 20.v,
            spacing: 20.h,
            children: List<Widget>.generate(
              homeNewUserOneModelObj?.closeItemList.length ?? 0,
              (index) {
                CloseItemModel model =
                    homeNewUserOneModelObj?.closeItemList[index] ??
                        CloseItemModel();

                return CloseItemWidget(
                  model,
                  onSelectedChipView: (value) {
                    context.read<HomeNewUserOneBloc>().add(
                        UpdateChipViewEvent(index: index, isSelected: value));
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildHomeNewUserOne(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.centerRight,
        child: BlocSelector<HomeNewUserOneBloc, HomeNewUserOneState,
            HomeNewUserOneModel?>(
          selector: (state) => state.homeNewUserOneModelObj,
          builder: (context, homeNewUserOneModelObj) {
            return ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 20.v,
                );
              },
              itemCount:
                  homeNewUserOneModelObj?.homenewuseroneItemList.length ?? 0,
              itemBuilder: (context, index) {
                HomenewuseroneItemModel model =
                    homeNewUserOneModelObj?.homenewuseroneItemList[index] ??
                        HomenewuseroneItemModel();
                return HomenewuseroneItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildUnion(
    BuildContext context, {
    required String userName,
  }) {
    return Row(
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
              userName,
              style: CustomTextStyles.bodySmallOnPrimaryContainer_1.copyWith(
                color: theme.colorScheme.onPrimaryContainer,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
