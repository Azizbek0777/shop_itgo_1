import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_itgo_1/core/utils/app_color.dart';
import 'package:shop_itgo_1/core/utils/app_style.dart';
import 'package:shop_itgo_1/ui/base/route/route_constants.dart';

class WalletsScreen extends StatefulWidget {
  @override
  _WalletsScreenState createState() => _WalletsScreenState();
}

class _WalletsScreenState extends State<WalletsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Container(
              margin: EdgeInsets.only(top: 0, bottom: 90),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "Hamyonlar",
                      style: AppStyle.textStyle11,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    for (int i = 0; i < 20; i++)
                      Container(
                        height: 154,
                        width: double.infinity,
                        margin:
                            EdgeInsets.only(right: 40, left: 40, bottom: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: AppColor.assets,
                        ),
                      )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30, left: 16, right: 16),
              height: 55,
              width: double.infinity,
              decoration: BoxDecoration(
              ),
              // ignore: deprecated_member_use
              child: FlatButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    RouteList.add_card,
                  );
                },
                child: Text(
                  "Karta qo’shish",
                  style:
                      AppStyle.buttonTextStyle.copyWith(color: AppColor.white),
                  textAlign: TextAlign.center,
                ),
                color: AppColor.yellow,
                textColor: AppColor.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
