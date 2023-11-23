import 'bloc/library_category_one_bloc.dart';
import 'models/library_category_one_model.dart';
import 'package:flutter/material.dart';
import 'package:onito_s_application1/core/app_export.dart';
import 'package:onito_s_application1/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class LibraryCategoryOnePage extends StatefulWidget {
  const LibraryCategoryOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  LibraryCategoryOnePageState createState() => LibraryCategoryOnePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<LibraryCategoryOneBloc>(
      create: (context) => LibraryCategoryOneBloc(LibraryCategoryOneState(
        libraryCategoryOneModelObj: LibraryCategoryOneModel(),
      ))
        ..add(LibraryCategoryOneInitialEvent()),
      child: LibraryCategoryOnePage(),
    );
  }
}

class LibraryCategoryOnePageState extends State<LibraryCategoryOnePage>
    with AutomaticKeepAliveClientMixin<LibraryCategoryOnePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<LibraryCategoryOneBloc, LibraryCategoryOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              decoration: AppDecoration.fillBlack,
              child: Column(
                children: [
                  SizedBox(height: 23.v),
                  _buildOrthodontics(context),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildOrthodontics(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup519,
                height: 9.v,
                width: 10.h,
                margin: EdgeInsets.only(
                  top: 2.v,
                  bottom: 3.v,
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
              Text(
                "lbl_x_a_l_c_1".tr.toUpperCase(),
                style: CustomTextStyles.bodySmall_2,
              ),
            ],
          ),
          SizedBox(height: 49.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 108.v,
                width: 180.h,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle449,
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
                          "lbl_19_45".tr,
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
                        "msg_clinical_video_root".tr,
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
          ),
        ],
      ),
    );
  }
}
