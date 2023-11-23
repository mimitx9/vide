import 'bloc/library_bloc.dart';
import 'models/library_model.dart';
import 'package:flutter/material.dart';
import 'package:onito_s_application1/core/app_export.dart';
import 'package:onito_s_application1/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class LibraryPage extends StatefulWidget {
  const LibraryPage({Key? key})
      : super(
          key: key,
        );

  @override
  LibraryPageState createState() => LibraryPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<LibraryBloc>(
      create: (context) => LibraryBloc(LibraryState(
        libraryModelObj: LibraryModel(),
      ))
        ..add(LibraryInitialEvent()),
      child: LibraryPage(),
    );
  }
}

class LibraryPageState extends State<LibraryPage>
    with AutomaticKeepAliveClientMixin<LibraryPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<LibraryBloc, LibraryState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: mediaQueryData.size.width,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 52.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: Column(
                        children: [
                          _buildGeneralDentistry(context),
                          SizedBox(height: 24.v),
                          _buildImplantology(context),
                          SizedBox(height: 24.v),
                          _buildGeneralDentistry1(context),
                        ],
                      ),
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
  Widget _buildGeneralDentistryButton(BuildContext context) {
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
  Widget _buildOrthodonticsButton(BuildContext context) {
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
  Widget _buildGeneralDentistry(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildTime(
          context,
          userImage: ImageConstant.imgRectangle425,
          time1: "lbl_19_45".tr,
          userImage2: ImageConstant.imgRectangle449,
          time2: "lbl_19_45".tr,
        ),
        Padding(
          padding: EdgeInsets.only(top: 2.v),
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
              _buildGeneralDentistryButton(context),
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
              _buildOrthodonticsButton(context),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildImplantologyButton(BuildContext context) {
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
  Widget _buildGeneralDentistryButton1(BuildContext context) {
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
  Widget _buildImplantology(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildTime(
            context,
            userImage: ImageConstant.imgRectangle443,
            time1: "lbl_19_45".tr,
            userImage2: ImageConstant.imgRectangle445,
            time2: "lbl_19_45".tr,
          ),
          Column(
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
              _buildImplantologyButton(context),
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
              _buildGeneralDentistryButton1(context),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGeneralDentistryButton2(BuildContext context) {
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
  Widget _buildOrthodonticsButton1(BuildContext context) {
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
  Widget _buildGeneralDentistry1(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildTime(
          context,
          userImage: ImageConstant.imgRectangle425,
          time1: "lbl_19_45".tr,
          userImage2: ImageConstant.imgRectangle449,
          time2: "lbl_19_45".tr,
        ),
        Padding(
          padding: EdgeInsets.only(top: 2.v),
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
              _buildGeneralDentistryButton2(context),
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
              _buildOrthodonticsButton1(context),
            ],
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildTime(
    BuildContext context, {
    required String userImage,
    required String time1,
    required String userImage2,
    required String time2,
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
        SizedBox(height: 24.v),
        SizedBox(
          height: 108.v,
          width: 180.h,
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              CustomImageView(
                imagePath: userImage2,
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
                    time2,
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
