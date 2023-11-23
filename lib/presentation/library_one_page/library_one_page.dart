import 'bloc/library_one_bloc.dart';
import 'models/library_one_model.dart';
import 'package:flutter/material.dart';
import 'package:onito_s_application1/core/app_export.dart';
import 'package:onito_s_application1/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class LibraryOnePage extends StatefulWidget {
  const LibraryOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  LibraryOnePageState createState() => LibraryOnePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<LibraryOneBloc>(
      create: (context) => LibraryOneBloc(LibraryOneState(
        libraryOneModelObj: LibraryOneModel(),
      ))
        ..add(LibraryOneInitialEvent()),
      child: LibraryOnePage(),
    );
  }
}

class LibraryOnePageState extends State<LibraryOnePage>
    with AutomaticKeepAliveClientMixin<LibraryOnePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<LibraryOneBloc, LibraryOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: mediaQueryData.size.width,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 23.v),
                    Column(
                      children: [
                        _buildLcRow(context),
                        SizedBox(height: 45.v),
                        _buildGeneralDentistryRow(context),
                        SizedBox(height: 24.v),
                        _buildImplantologyRow(context),
                        SizedBox(height: 24.v),
                        _buildProfileStack(context),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildLcRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup519,
            height: 9.v,
            width: 10.h,
            margin: EdgeInsets.only(
              top: 2.v,
              bottom: 4.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: Text(
              "lbl_l_c".tr,
              style: CustomTextStyles.bodySmall_2,
            ),
          ),
          Spacer(),
          Opacity(
            opacity: 0.5,
            child: Text(
              "lbl_x_a_l_c".tr.toUpperCase(),
              style: CustomTextStyles.bodySmallOnPrimaryContainer,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGeneralDentistry(BuildContext context) {
    return CustomElevatedButton(
      width: 121.h,
      text: "msg_general_dentistry".tr,
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
    );
  }

  /// Section Widget
  Widget _buildOrthodontics(BuildContext context) {
    return CustomElevatedButton(
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
    );
  }

  /// Section Widget
  Widget _buildGeneralDentistryRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildTime(
            context,
            userImage: ImageConstant.imgRectangle425,
            time: "lbl_19_45".tr,
            userImage1: ImageConstant.imgRectangle449,
            time1: "lbl_19_45".tr,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 14.h,
              top: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 161.h,
                  child: Text(
                    "msg_treatment_planning".tr,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                SizedBox(height: 28.v),
                _buildGeneralDentistry(context),
                SizedBox(height: 26.v),
                SizedBox(
                  width: 196.h,
                  child: Text(
                    "msg_clinical_video_root".tr,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                SizedBox(height: 29.v),
                _buildOrthodontics(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildImplantology(BuildContext context) {
    return CustomElevatedButton(
      width: 100.h,
      text: "lbl_implantology".tr,
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
    );
  }

  /// Section Widget
  Widget _buildGeneralDentistry1(BuildContext context) {
    return CustomElevatedButton(
      width: 121.h,
      text: "msg_general_dentistry".tr,
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
    );
  }

  /// Section Widget
  Widget _buildImplantologyRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 24.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildTime(
            context,
            userImage: ImageConstant.imgRectangle443,
            time: "lbl_19_45".tr,
            userImage1: ImageConstant.imgRectangle445,
            time1: "lbl_19_45".tr,
          ),
          Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 192.h,
                  child: Text(
                    "msg_transferring_the".tr,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                SizedBox(height: 32.v),
                _buildImplantology(context),
                SizedBox(height: 26.v),
                SizedBox(
                  width: 183.h,
                  child: Text(
                    "msg_clinical_video_full".tr,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                SizedBox(height: 28.v),
                _buildGeneralDentistry1(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGeneralDentistry2(BuildContext context) {
    return CustomElevatedButton(
      width: 121.h,
      text: "msg_general_dentistry".tr,
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
    );
  }

  /// Section Widget
  Widget _buildOrthodontics1(BuildContext context) {
    return CustomElevatedButton(
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
    );
  }

  /// Section Widget
  Widget _buildProfileStack(BuildContext context) {
    return SizedBox(
      height: 240.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildTime(
                  context,
                  userImage: ImageConstant.imgRectangle425,
                  time: "lbl_19_45".tr,
                  userImage1: ImageConstant.imgRectangle449,
                  time1: "lbl_19_45".tr,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 14.h,
                    top: 2.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 161.h,
                        child: Text(
                          "msg_treatment_planning".tr,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                      SizedBox(height: 28.v),
                      _buildGeneralDentistry2(context),
                      SizedBox(height: 26.v),
                      SizedBox(
                        width: 196.h,
                        child: Text(
                          "msg_clinical_video_root".tr,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                      SizedBox(height: 29.v),
                      _buildOrthodontics1(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 64.v),
              padding: EdgeInsets.symmetric(
                horizontal: 89.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.fillBlack900,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 5.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 6.h,
                      right: 10.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Opacity(
                          opacity: 0.5,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgProfile,
                            height: 20.v,
                            width: 22.h,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgSearch,
                          height: 18.v,
                          width: 23.h,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Padding(
                    padding: EdgeInsets.only(right: 3.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Opacity(
                          opacity: 0.5,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 1.v),
                            child: Text(
                              "lbl_home".tr,
                              style: CustomTextStyles
                                  .bodySmallOnPrimaryContainer_1,
                            ),
                          ),
                        ),
                        Text(
                          "lbl_library".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildTime(
    BuildContext context, {
    required String userImage,
    required String time,
    required String userImage1,
    required String time1,
  }) {
    return Column(
      children: [
        SizedBox(
          height: 108.v,
          width: 180.h,
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              CustomImageView(
                imagePath: userImage,
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
                    time,
                    style: CustomTextStyles.bodySmall10.copyWith(
                      color: theme.colorScheme.primary,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 24.v),
        SizedBox(
          height: 108.v,
          width: 180.h,
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              CustomImageView(
                imagePath: userImage1,
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
                    time1,
                    style: CustomTextStyles.bodySmall10.copyWith(
                      color: theme.colorScheme.primary,
                    ),
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
