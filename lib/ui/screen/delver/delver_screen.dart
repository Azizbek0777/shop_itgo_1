import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_itgo_1/core/utils/app_color.dart';
import 'package:shop_itgo_1/core/utils/app_style.dart';
import 'package:shop_itgo_1/ui/base/route/route_constants.dart';

class DelverScreen extends StatefulWidget {
  @override
  _DelverScreenState createState() => _DelverScreenState();
}

class _DelverScreenState extends State<DelverScreen> {
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
      ),
      backgroundColor: AppColor.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Yetkazib berish usulini tanlang",
              style: AppStyle.textStyle1,
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                height: 55,
                width: 343,
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shadowColor: AppColor.yellow,
                      side: BorderSide(
                        width: 1,
                        color: AppColor.yellow,
                      ),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(14))),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                        RouteList.delver_time,
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset("assets/svg/calendar.svg"),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Jadval asosida yetkazish",
                          style: AppStyle.textStyle1,
                        )
                      ],
                    )),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Container(
                height: 55,
                width: 343,
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shadowColor: AppColor.yellow,
                      side: BorderSide(
                        width: 1,
                        color: AppColor.yellow,
                      ),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(14))),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                        RouteList.delver_time_fast,
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset("assets/svg/startup.svg"),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Tezkor yetkazib berish",
                          style: AppStyle.textStyle1,
                        )
                      ],
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
