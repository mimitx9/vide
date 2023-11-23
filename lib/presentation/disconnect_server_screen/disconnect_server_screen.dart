import 'bloc/disconnect_server_bloc.dart';
import 'models/disconnect_server_model.dart';
import 'package:flutter/material.dart';
import 'package:onito_s_application1/core/app_export.dart';
import 'package:onito_s_application1/widgets/custom_elevated_button.dart';

class DisconnectServerScreen extends StatelessWidget {
  const DisconnectServerScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<DisconnectServerBloc>(
      create: (context) => DisconnectServerBloc(DisconnectServerState(
        disconnectServerModelObj: DisconnectServerModel(),
      ))
        ..add(DisconnectServerInitialEvent()),
      child: DisconnectServerScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<DisconnectServerBloc, DisconnectServerState>(
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
                    flex: 47,
                  ),
                  Text(
                    "lbl_b_o_tr".tr,
                    style: theme.textTheme.headlineLarge,
                  ),
                  SizedBox(height: 30.v),
                  SizedBox(
                    width: 198.h,
                    child: Text(
                      "msg_th_1_trong_3_c_ch2".tr,
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
                    flex: 52,
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
