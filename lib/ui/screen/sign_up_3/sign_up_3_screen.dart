import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:shop_itgo_1/core/utils/app_color.dart';
import 'package:shop_itgo_1/core/utils/app_style.dart';
import 'package:shop_itgo_1/core/utils/functions.dart';
import 'package:shop_itgo_1/domain/notifier/main_notifier.dart';
import 'package:shop_itgo_1/ui/base/base.dart';
import 'package:shop_itgo_1/ui/base/route/route_constants.dart';
import 'package:shop_itgo_1/ui/page/main/widgets/main_arguments.dart';

class SignUp3Screen extends BasePage {

  @override
  _SignUp3ScreenState createState() => _SignUp3ScreenState();
}

class _SignUp3ScreenState extends BasePageState<SignUp3Screen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/svg/true.svg"),
              SizedBox(height: 13,),
              Text("Ma'lumotlar saqlandi",style: AppStyle.textStyle2,),
              SizedBox(height: 20,),
              Text("Malumotlaringi saqlandi,\nularni profil bolimdan \no'zgartirishingiz mumkin",style: AppStyle.textStyle3,textAlign: TextAlign.center,)
            ],
          ),
        ),
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
      Navigator.of(context).pushNamed(RouteList.main_page,arguments: MenuArguments(bottomMenu: BottomMenu.menu_home, ));
      Provider.of<MainNotifier>(context, listen: false).setIndex(1);
    });
  }
}
