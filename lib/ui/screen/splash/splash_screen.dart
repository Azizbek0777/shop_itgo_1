

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_itgo_1/core/utils/app_color.dart';
import 'package:shop_itgo_1/ui/base/base.dart';
import 'package:shop_itgo_1/ui/base/route/route_constants.dart';

class SplashScreen extends BasePage {





  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends BasePageState<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: Stack(
        children: [
          Center(child: logo,)],
      ),
    );
  }


  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    openNextPage(context);
  }

  openNextPage(BuildContext context) async {
    Timer(Duration(milliseconds: 2000), () async {
      // await StorageUtil.getInstance();
      //  final hasProfile = StorageUtil.hasProfile();
      final hasProfile = false;
      if (hasProfile) {
        // Provider.of<CategoryBloc>(context, listen: false).addEvent(GetCategoryEvent());
        Navigator.of(context).pushNamed(
          RouteList.verification,
        );
      } else {
         Navigator.of(context).pushNamed(RouteList.intro,);
      }
    });
  }
}