import 'bloc/video_detail_author_bloc.dart';
import 'models/video_detail_author_model.dart';
import 'package:flutter/material.dart';
import 'package:onito_s_application1/core/app_export.dart';
import 'package:onito_s_application1/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class VideoDetailAuthorPage extends StatefulWidget {
  const VideoDetailAuthorPage({Key? key})
      : super(
          key: key,
        );

  @override
  VideoDetailAuthorPageState createState() => VideoDetailAuthorPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<VideoDetailAuthorBloc>(
      create: (context) => VideoDetailAuthorBloc(VideoDetailAuthorState(
        videoDetailAuthorModelObj: VideoDetailAuthorModel(),
      ))
        ..add(VideoDetailAuthorInitialEvent()),
      child: VideoDetailAuthorPage(),
    );
  }
}

class VideoDetailAuthorPageState extends State<VideoDetailAuthorPage>
    with AutomaticKeepAliveClientMixin<VideoDetailAuthorPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<VideoDetailAuthorBloc, VideoDetailAuthorState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: _buildScrollView(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 43.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle449,
                      height: 180.adaptSize,
                      width: 180.adaptSize,
                      radius: BorderRadius.circular(
                        5.h,
                      ),
                    ),
                    SizedBox(height: 30.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle453,
                      height: 180.adaptSize,
                      width: 180.adaptSize,
                      radius: BorderRadius.circular(
                        5.h,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 14.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomElevatedButton(
                        width: 85.h,
                        text: "lbl_8_videos".tr,
                        margin: EdgeInsets.only(left: 1.h),
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
                      SizedBox(height: 71.v),
                      Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: _buildFacebook(
                          context,
                          userName: "lbl_l_u".tr,
                        ),
                      ),
                      SizedBox(height: 29.v),
                      CustomElevatedButton(
                        width: 85.h,
                        text: "lbl_8_videos".tr,
                        margin: EdgeInsets.only(left: 1.h),
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
                      SizedBox(height: 71.v),
                      Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: _buildFacebook(
                          context,
                          userName: "lbl_l_u".tr,
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
    );
  }

  /// Common widget
  Widget _buildFacebook(
    BuildContext context, {
    required String userName,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgFacebook,
          height: 10.adaptSize,
          width: 10.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 2.v),
        ),
        Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: Text(
            userName,
            style: theme.textTheme.bodySmall!.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }
}
