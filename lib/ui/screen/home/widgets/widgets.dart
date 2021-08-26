import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_itgo_1/core/utils/app_color.dart';
import 'package:shop_itgo_1/core/utils/app_style.dart';
import 'package:shop_itgo_1/ui/base/route/route_constants.dart';

class ListItem extends StatefulWidget {
  @override
  _ListItemState createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  int a = 0;



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5, left: 5, top: 26, bottom: 50),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColor.background2,
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(
                RouteList.product_first,
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 114,
                  width: 114,
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
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Go'sht",
                  style: AppStyle.textStyle5,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Lahm",
                  style: AppStyle.textStyle6,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "79 990",
                  style: AppStyle.textStyle5,
                ),
                SizedBox(
                  height: 15,
                )
              ],
            ),
          ),
          Row(
            children: [
              // ignore: deprecated_member_use
              IconButton(
                  onPressed: () {
                    setState(() {
                      a--;
                    });
                  },
                  icon: SvgPicture.asset(
                    "assets/svg/minus.svg",
                    height: 15,
                    width: 15,
                  )),

              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: AppColor.grey1, width: 1),
                    borderRadius: BorderRadius.circular(4)),
                height: 27,
                width: 27,
                child: Center(
                  child: TextFormField(
decoration: InputDecoration(

),
                  )
                  // Text(
                  //   "$a",
                  //   style: AppStyle.textStyle9,
                  //   textAlign: TextAlign.center,
                  // ),
                ),
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      a++;
                    });
                  },
                  icon: SvgPicture.asset(
                    "assets/svg/add.svg",
                    height: 15,
                    width: 15,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
