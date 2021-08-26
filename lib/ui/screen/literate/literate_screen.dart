import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:icon/icon.dart';
import 'package:shop_itgo_1/core/utils/app_color.dart';
import 'package:shop_itgo_1/core/utils/app_style.dart';
import 'package:shop_itgo_1/ui/base/route/route_constants.dart';
import 'package:shop_itgo_1/ui/screen/home/widgets/widgets.dart';
import 'package:shop_itgo_1/ui/screen/literate/widgets/widgets.dart';

class LiterateScreen extends StatefulWidget {
  @override
  _LiterateScreenState createState() => _LiterateScreenState();
}

class _LiterateScreenState extends State<LiterateScreen> {
  int a = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.white,
        elevation: 0.0,
      ),
      backgroundColor: AppColor.white,
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 0, bottom: 130),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [

                    Text(
                      "Savatcha",
                      style: AppStyle.textStyle11,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    for (int i = 0; i < 20; i++)
                      Widgets()                  ],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 50,
                ),
                Spacer(),
                Container(
                  height: 75,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Center(
                        child: Text(
                          "Barchasi: 16 990 so'm",
                          style: AppStyle.textStyle11,
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    // color: AppColor.yellow
                    // gradient: LinearGradient(
                    //   begin: Alignment.topLeft,
                    //   end: Alignment.topRight,
                    //   stops: [1.0,2.0,3.0,4.0,6.0,9.0],
                    //   colors: [
                    //     Colors.yellow[800],
                    //     Colors.yellow[800],
                    //   ]
                    // )
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      // stops: [0.1, 0.5, 0.7, 0.9],
                      colors: [
                        Colors.white12,
                        Colors.white10,
                        Colors.white,
                        Colors.white,
                        Colors.white,
                        Colors.white
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 30, left: 16, right: 16),
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white70,
                        Colors.white54,
                        Colors.white30,
                        Colors.white10
                      ],
                    ),
                  ),
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                        RouteList.address2,
                      );
                    },
                    child: Text(
                      "Buyurtma berish",
                      style: AppStyle.buttonTextStyle
                          .copyWith(color: AppColor.white),
                      textAlign: TextAlign.center,
                    ),
                    color: AppColor.yellow,
                    textColor: AppColor.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
