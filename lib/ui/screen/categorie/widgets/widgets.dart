import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_itgo_1/core/utils/app_color.dart';

class CategoriesItem extends StatefulWidget {
  @override
  _CategoriesItemState createState() => _CategoriesItemState();
}

class _CategoriesItemState extends State<CategoriesItem> {
  List svg = [
    "assets/svg/vegetables.svg",
    "assets/svg/plastic-bottle.svg",
    "assets/svg/milk.svg",
    "assets/svg/meat.svg",
    "assets/svg/alcohol-gel.svg",
    "assets/svg/bread.svg",
    "assets/svg/candy-shop.svg",
    "assets/svg/canned-food.svg",
    "assets/svg/cleaning.svg",
    "assets/svg/coffee-cup.svg",
    "assets/svg/home1.svg",
    "assets/svg/ready-meal.svg",
    "assets/svg/recipe-book.svg",
    "assets/svg/snow.svg",
    "assets/svg/sweet.svg",
    "assets/svg/toys.svg",
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 16, right: 8, top: 8, bottom: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: AppColor.white,
                      border: Border.all(color: AppColor.yellow, width: 1)),
                  height: 55,
                  width: 163,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset(svg[1]),
                      Text(
                        "Sabzavotlar va \nmevalar",
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColor.black1,
                        ),
                        maxLines: 2,
                        textAlign: TextAlign.start,
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 16, right: 8, top: 8, bottom: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: AppColor.white,
                      border: Border.all(color: AppColor.yellow, width: 1)),
                  height: 55,
                  width: 163,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset(svg[2]),
                      Text(
                        "Sabzavotlar va \nmevalar",
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColor.black1,
                        ),
                        maxLines: 2,
                        textAlign: TextAlign.start,
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 16, right: 8, top: 8, bottom: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: AppColor.white,
                      border: Border.all(color: AppColor.yellow, width: 1)),
                  height: 55,
                  width: 163,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset(svg[3]),
                      Text(
                        "Sabzavotlar va \nmevalar",
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColor.black1,
                        ),
                        maxLines: 2,
                        textAlign: TextAlign.start,
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 16, right: 8, top: 8, bottom: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: AppColor.white,
                      border: Border.all(color: AppColor.yellow, width: 1)),
                  height: 55,
                  width: 163,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset(svg[4]),
                      Text(
                        "Sabzavotlar va \nmevalar",
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColor.black1,
                        ),
                        maxLines: 2,
                        textAlign: TextAlign.start,
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 16, right: 8, top: 8, bottom: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: AppColor.white,
                      border: Border.all(color: AppColor.yellow, width: 1)),
                  height: 55,
                  width: 163,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset(svg[5]),
                      Text(
                        "Sabzavotlar va \nmevalar",
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColor.black1,
                        ),
                        maxLines: 2,
                        textAlign: TextAlign.start,
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 16, right: 8, top: 8, bottom: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: AppColor.white,
                      border: Border.all(color: AppColor.yellow, width: 1)),
                  height: 55,
                  width: 163,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset(svg[6]),
                      Text(
                        "Sabzavotlar va \nmevalar",
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColor.black1,
                        ),
                        maxLines: 2,
                        textAlign: TextAlign.start,
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 16, right: 8, top: 8, bottom: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: AppColor.white,
                      border: Border.all(color: AppColor.yellow, width: 1)),
                  height: 55,
                  width: 163,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset(svg[7]),
                      Text(
                        "Sabzavotlar va \nmevalar",
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColor.black1,
                        ),
                        maxLines: 2,
                        textAlign: TextAlign.start,
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                  Container(
                    margin: EdgeInsets.only(left: 16, right: 8, top: 8, bottom: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: AppColor.white,
                        border: Border.all(color: AppColor.yellow, width: 1)),
                    height: 55,
                    width: 163,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SvgPicture.asset(svg[8]),
                        Text(
                          "Sabzavotlar va \nmevalar",
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColor.black1,
                          ),
                          maxLines: 2,
                          textAlign: TextAlign.start,
                        )
                      ],
                    ),
                  )
              ],
            ),
          ],
        ),Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 16, right: 8, top: 8, bottom: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: AppColor.white,
                      border: Border.all(color: AppColor.yellow, width: 1)),
                  height: 55,
                  width: 163,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset(svg[1]),
                      Text(
                        "Sabzavotlar va \nmevalar",
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColor.black1,
                        ),
                        maxLines: 2,
                        textAlign: TextAlign.start,
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 16, right: 8, top: 8, bottom: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: AppColor.white,
                      border: Border.all(color: AppColor.yellow, width: 1)),
                  height: 55,
                  width: 163,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset(svg[2]),
                      Text(
                        "Sabzavotlar va \nmevalar",
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColor.black1,
                        ),
                        maxLines: 2,
                        textAlign: TextAlign.start,
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 16, right: 8, top: 8, bottom: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: AppColor.white,
                      border: Border.all(color: AppColor.yellow, width: 1)),
                  height: 55,
                  width: 163,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset(svg[3]),
                      Text(
                        "Sabzavotlar va \nmevalar",
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColor.black1,
                        ),
                        maxLines: 2,
                        textAlign: TextAlign.start,
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 16, right: 8, top: 8, bottom: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: AppColor.white,
                      border: Border.all(color: AppColor.yellow, width: 1)),
                  height: 55,
                  width: 163,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset(svg[4]),
                      Text(
                        "Sabzavotlar va \nmevalar",
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColor.black1,
                        ),
                        maxLines: 2,
                        textAlign: TextAlign.start,
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 16, right: 8, top: 8, bottom: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: AppColor.white,
                      border: Border.all(color: AppColor.yellow, width: 1)),
                  height: 55,
                  width: 163,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset(svg[5]),
                      Text(
                        "Sabzavotlar va \nmevalar",
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColor.black1,
                        ),
                        maxLines: 2,
                        textAlign: TextAlign.start,
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 16, right: 8, top: 8, bottom: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: AppColor.white,
                      border: Border.all(color: AppColor.yellow, width: 1)),
                  height: 55,
                  width: 163,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset(svg[6]),
                      Text(
                        "Sabzavotlar va \nmevalar",
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColor.black1,
                        ),
                        maxLines: 2,
                        textAlign: TextAlign.start,
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 16, right: 8, top: 8, bottom: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: AppColor.white,
                      border: Border.all(color: AppColor.yellow, width: 1)),
                  height: 55,
                  width: 163,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset(svg[7]),
                      Text(
                        "Sabzavotlar va \nmevalar",
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColor.black1,
                        ),
                        maxLines: 2,
                        textAlign: TextAlign.start,
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 16, right: 8, top: 8, bottom: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: AppColor.white,
                      border: Border.all(color: AppColor.yellow, width: 1)),
                  height: 55,
                  width: 163,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset(svg[8]),
                      Text(
                        "Sabzavotlar va \nmevalar",
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColor.black1,
                        ),
                        maxLines: 2,
                        textAlign: TextAlign.start,
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    );

  }
}
