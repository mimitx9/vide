import 'bloc/no_internet_bloc.dart';
import 'models/no_internet_model.dart';
import 'package:flutter/material.dart';
import 'package:onito_s_application1/core/app_export.dart';
import 'package:onito_s_application1/widgets/custom_elevated_button.dart';

class NoInternetScreen extends StatelessWidget {
  const NoInternetScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<NoInternetBloc>(
      create: (context) => NoInternetBloc(NoInternetState(
        noInternetModelObj: NoInternetModel(),
      ))
        ..add(NoInternetInitialEvent()),
      child: NoInternetScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<NoInternetBloc, NoInternetState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 95.v),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(
                    flex: 48,
                  ),
                  Text(
                    "lbl_ooops".tr,
                    style: theme.textTheme.headlineLarge,
                  ),
                  SizedBox(height: 25.v),
                  SizedBox(
                    width: 200.h,
                    child: Text(
                      "msg_th_1_trong_3_c_ch".tr,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyLarge16_3.copyWith(
                        height: 1.56,
                      ),
                    ),
                  ),
                  SizedBox(height: 38.v),
                  CustomElevatedButton(
                    height: 60.v,
                    width: 190.h,
                    text: "lbl_th_l_i".tr.toUpperCase(),
                    buttonStyle: CustomButtonStyles.fillPrimary,
                    buttonTextStyle: theme.textTheme.titleSmall!,
                  ),
                  Spacer(
                    flex: 51,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup,
                    height: 19.v,
                    width: 104.h,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
