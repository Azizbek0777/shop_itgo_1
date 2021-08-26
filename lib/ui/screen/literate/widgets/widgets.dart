import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_itgo_1/core/utils/app_color.dart';
import 'package:shop_itgo_1/core/utils/app_style.dart';

class Widgets extends StatefulWidget {
  @override
  _WidgetsState createState() => _WidgetsState();
}

class _WidgetsState extends State<Widgets> {
  int a = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 112,
      width: 343,
      margin: EdgeInsets.only(
        bottom: 16,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: AppColor.grey1)),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 6, right: 20, bottom: 6, top: 6),
            height: 100,
            width: 92,
            child: Image.asset("assets/png/meat.png"),
            decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(9),
              border: Border.all(
                color: AppColor.grey1,
                width: 0.45,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Go'sht",
                style: AppStyle.textStyle5,
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                "79 990 so'm",
                style: AppStyle.textStyle5,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Icon(
                      Icons.remove,
                      color: Colors.black,
                    ),
                    onTap: () {
                      setState(() {
                        a--;
                      });
                    },
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30, right: 30),
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColor.grey1, width: 1),
                        borderRadius: BorderRadius.circular(4)),
                    height: 23,
                    width: 23,
                    child: Center(
                      child: Text(
                        "$a",
                        style: AppStyle.textStyle9,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Icon(
                      Icons.add,
                      color: Colors.black,
                    ),
                    onTap: () {
                      setState(() {
                        a++;
                      });
                    },
                  )
                ],
              ),
            ],
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.only(top: 18, right: 18),
                  child: Icon(
                    Icons.favorite_border,
                    size: 23,
                   color: AppColor.grey4,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
