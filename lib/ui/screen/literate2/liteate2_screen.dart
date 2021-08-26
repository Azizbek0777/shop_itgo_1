import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_itgo_1/core/utils/app_color.dart';
import 'package:shop_itgo_1/core/utils/app_style.dart';
import 'package:shop_itgo_1/ui/screen/literate/widgets/widgets.dart';

class Literate2Screen extends StatefulWidget {
  @override
  _Literate2ScreenState createState() => _Literate2ScreenState();
}

class _Literate2ScreenState extends State<Literate2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColor.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: AppColor.black1,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          "Savatcha",
          style: AppStyle.textStyle11,
        ),
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
                    SizedBox(
                      height: 30,
                    ),
                    for (int i = 0; i < 20; i++) Widgets()
                  ],
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
                  decoration: BoxDecoration(
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
                  child: Center(
                    child: Text(
                      "Barchasi: 16 990 so'm",
                      style: AppStyle.textStyle11,
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
