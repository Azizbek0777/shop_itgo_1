import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:shop_itgo_1/core/utils/app_color.dart';
import 'package:shop_itgo_1/core/utils/app_style.dart';
import 'package:shop_itgo_1/core/utils/functions.dart';
import 'package:shop_itgo_1/domain/notifier/main_notifier.dart';
import 'package:shop_itgo_1/ui/base/route/route_constants.dart';
import 'package:shop_itgo_1/ui/page/main/widgets/main_arguments.dart';

class ProductFirstScreen extends StatefulWidget {
  @override
  _ProductFirstScreenState createState() => _ProductFirstScreenState();
}

class _ProductFirstScreenState extends State<ProductFirstScreen> {
  int a=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.white,
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
          actions: [
            IconButton(
              icon: SvgPicture.asset("assets/svg/icon.svg"),
              onPressed: () {
                Navigator.of(context).pushNamed(RouteList.main_page,arguments: MenuArguments(bottomMenu: BottomMenu.menu_literate, ));
                Provider.of<MainNotifier>(context, listen: false).setIndex(3);
              },
            ),SizedBox(width: 16,)
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Divider(
              color: AppColor.grey1,
              thickness: 1,
              height: 1,
            ),
            Container(
              height: 250,
              width: double.infinity,
              // color: AppColor.yellow,
              child: Image.asset(
                "assets/png/meat2.png",
              ),
            ),
            Divider(
              color: AppColor.grey1,
              thickness: 1,
              height: 1,
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacer(),
                SizedBox(width: 35),
                Text(
                  "Go'sht",
                  style: AppStyle.textStyle2,
                ),Spacer(),
                Container(
                     margin: EdgeInsets.only(right: 16),
                    child: Icon(
                      Icons.favorite_border,
                      size: 23,
                      color: AppColor.grey4,
                    ))
              ],
            ),
            SizedBox(height: 10,),
            Text("Lahm",style: AppStyle.textStyle6,),
            SizedBox(height: 35,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Icon(
                    Icons.remove,
                    color: Colors.black,size: 30,
                  ),
                  onTap: () {
                    setState(() {
                      a--;
                    });
                  },
                ),
                Container(
                  margin: EdgeInsets.only(left: 52, right: 52),
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColor.grey1, width: 1),
                      borderRadius: BorderRadius.circular(4)),
                  height: 40,
                  width: 40,
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
                    Icons.add,size: 30,
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
            SizedBox(height: 32,),
            Text("99 990 so'm",style: AppStyle.textStyle17,),
            Text("79 990 so'm",style: AppStyle.textStyle18,),
            Spacer(),
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
                  Navigator.of(context).pushNamed(RouteList.main_page,arguments: MenuArguments(bottomMenu: BottomMenu.menu_literate, ));
                  Provider.of<MainNotifier>(context, listen: false).setIndex(3);

                },
                child: Text(
                  "Savatga qo’shish",
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
            )
          ],
        ));
  }
}
