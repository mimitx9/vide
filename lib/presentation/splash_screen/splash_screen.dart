import 'bloc/splash_bloc.dart';import 'models/splash_model.dart';import 'package:flutter/material.dart';import 'package:onito_s_application1/core/app_export.dart';class SplashScreen extends StatelessWidget {const SplashScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<SplashBloc>(create: (context) => SplashBloc(SplashState(splashModelObj: SplashModel()))..add(SplashInitialEvent()), child: SplashScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<SplashBloc, SplashState>(builder: (context, state) {return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [Spacer(), CustomImageView(imagePath: ImageConstant.imgGroup, height: 40.v, width: 208.h), SizedBox(height: 52.v), CustomImageView(imagePath: ImageConstant.imgGroup594Primary444x430, height: 444.v, width: 430.h)]))));}); } 
 }
