import 'bloc/video_detail_author_tab_container_bloc.dart';
import 'models/video_detail_author_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:onito_s_application1/core/app_export.dart';
import 'package:onito_s_application1/presentation/video_detail_author_one_page/video_detail_author_one_page.dart';
import 'package:onito_s_application1/presentation/video_detail_author_page/video_detail_author_page.dart';
import 'package:onito_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:onito_s_application1/widgets/app_bar/appbar_trailing_image_one.dart';
import 'package:onito_s_application1/widgets/app_bar/custom_app_bar.dart';

class VideoDetailAuthorTabContainerScreen extends StatefulWidget {
  const VideoDetailAuthorTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  VideoDetailAuthorTabContainerScreenState createState() =>
      VideoDetailAuthorTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<VideoDetailAuthorTabContainerBloc>(
      create: (context) =>
          VideoDetailAuthorTabContainerBloc(VideoDetailAuthorTabContainerState(
        videoDetailAuthorTabContainerModelObj:
            VideoDetailAuthorTabContainerModel(),
      ))
            ..add(VideoDetailAuthorTabContainerInitialEvent()),
      child: VideoDetailAuthorTabContainerScreen(),
    );
  }
}

class VideoDetailAuthorTabContainerScreenState
    extends State<VideoDetailAuthorTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<VideoDetailAuthorTabContainerBloc,
        VideoDetailAuthorTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _buildNinetyThree(context),
                    SizedBox(height: 36.v),
                    Container(
                      height: 32.v,
                      width: 278.h,
                      margin: EdgeInsets.only(left: 52.h),
                      child: TabBar(
                        controller: tabviewController,
                        labelPadding: EdgeInsets.zero,
                        labelColor: theme.colorScheme.primary,
                        labelStyle: TextStyle(
                          fontSize: 14.fSize,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                        unselectedLabelColor:
                            theme.colorScheme.onPrimaryContainer,
                        unselectedLabelStyle: TextStyle(
                          fontSize: 14.fSize,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                        indicatorColor: theme.colorScheme.primary,
                        tabs: [
                          Tab(
                            child: Text(
                              "lbl_class_8".tr,
                            ),
                          ),
                          Tab(
                            child: Opacity(
                              opacity: 0.5,
                              child: Text(
                                "lbl_video_19".tr,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    _buildTabBarView(context),
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
  Widget _buildNinetyThree(BuildContext context) {
    return SizedBox(
      height: 430.adaptSize,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle375430x430,
            height: 430.adaptSize,
            width: 430.adaptSize,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomAppBar(
                  height: 129.v,
                  leadingWidth: 52.h,
                  leading: AppbarLeadingImage(
                    imagePath: ImageConstant.imgUnionPrimary,
                    margin: EdgeInsets.only(
                      left: 27.h,
                      top: 36.v,
                      bottom: 68.v,
                    ),
                  ),
                  actions: [
                    AppbarTrailingImageOne(
                      imagePath: ImageConstant.imgProfilePrimary19x22,
                      margin: EdgeInsets.fromLTRB(27.h, 37.v, 27.h, 73.v),
                    ),
                  ],
                  styleType: Style.bgGradientnameblack900nameblack900opacity0,
                ),
                SizedBox(height: 172.v),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 134.h,
                    vertical: 31.v,
                  ),
                  decoration: AppDecoration.gradientBlackToBlack,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 41.v),
                      Text(
                        "msg_dr_kahn_zuccheli".tr,
                        style: theme.textTheme.titleLarge,
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

  /// Section Widget
  Widget _buildTabBarView(BuildContext context) {
    return SizedBox(
      height: 433.v,
      child: TabBarView(
        controller: tabviewController,
        children: [
          VideoDetailAuthorPage.builder(context),
          VideoDetailAuthorOnePage.builder(context),
        ],
      ),
    );
  }
}
