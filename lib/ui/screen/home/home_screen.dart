import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_itgo_1/core/utils/app_color.dart';
import 'package:shop_itgo_1/core/utils/app_style.dart';
import 'package:shop_itgo_1/ui/base/base.dart';
import 'package:shop_itgo_1/ui/screen/home/widgets/slider.dart';
import 'package:shop_itgo_1/ui/screen/home/widgets/widgets.dart';

class HomeScreen extends BasePage {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends BasePageState<HomeScreen> {
  TextEditingController editingController = TextEditingController();
  int a = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.yellow,
      body: Container(
        color: AppColor.white,
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 230,
                          decoration: BoxDecoration(
                              color: AppColor.yellow,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(38),
                                  bottomRight: Radius.circular(38))),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 90),
                            // padding: EdgeInsets.only(right: 10),
                            height: 250,
                            child: SliderWidget()),
                      ],
                    ),
                    for (int i = 0; i < 10; i++)
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Aksiyalar",
                                  style: AppStyle.textStyle5,
                                ),
                                GestureDetector(
                                  child: Text(
                                    "Barchasi",
                                    style: AppStyle.textStyle7,
                                  ),
                                  onTap: () {},
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 8),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  for (int i = 0; i < a; i++) ListItem(),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              ],
            ),
            Container(
              width: double.infinity,
decoration: BoxDecoration(
  color: AppColor.yellow
),
              child: Container(
                margin: EdgeInsets.only(top: 50, bottom: 20, left: 26, right: 26),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.circular(25)),
                child: TextField(
                  onChanged: (value) {
                    // filterSearchResults(value);
                  },
                  controller: editingController,
                  decoration: InputDecoration(

                      labelText: "Search",
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25.0)))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
