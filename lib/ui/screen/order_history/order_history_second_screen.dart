import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_itgo_1/core/utils/app_color.dart';
import 'package:shop_itgo_1/core/utils/app_style.dart';
import 'package:shop_itgo_1/ui/base/route/route_constants.dart';
import 'package:shop_itgo_1/ui/screen/address_you/widgets/widgets.dart';

class OrderHistorySecondScreen extends StatefulWidget {
  @override
  _OrderHistorySecondScreenState createState() =>
      _OrderHistorySecondScreenState();
}

class _OrderHistorySecondScreenState extends State<OrderHistorySecondScreen> {
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
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 70),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        "Buyurtmalar tarixi",
                        style: AppStyle.textStyle1,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 63,
                      padding: EdgeInsets.only(top: 10),
                      alignment: Alignment.center,
                      child: AddressYou2Widgets(
                        leading: "assets/svg/location.svg",
                        title: "Manzilingiz",
                        subtitle: "Yunusobod tumani,19-kvartal",
                        icon: Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 17,
                          color: AppColor.yellow,
                        ),
                        onTap: () {
                          Navigator.of(context).pushNamed(
                            RouteList.address_new,
                          );
                        },
                      ),
                    ),
                    Divider(
                      color: AppColor.grey1,
                      height: 1,
                    ),
                    Container(
                      height: 63,
                      padding: EdgeInsets.only(top: 10),
                      alignment: Alignment.center,
                      child: AddressYou2Widgets(
                        leading: "assets/svg/clock.svg",
                        title: "Vaqt",
                        subtitle: "17-sentabr, 16:00 - 17:00",
                        icon: Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 17,
                          color: AppColor.yellow,
                        ),
                        onTap: () {},
                      ),
                    ),
                    Divider(
                      color: AppColor.grey1,
                      height: 1,
                    ),
                    Container(
                      height: 55,
                      padding: EdgeInsets.only(top: 10),
                      alignment: Alignment.center,
                      child: AddressYou2Widgets(
                        leading: "assets/svg/shopping-bag.svg",
                        title: "15 ta mahsulot",
                        subtitle: "",
                        icon: Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 17,
                          color: AppColor.yellow,
                        ),
                        onTap: () {},
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          for (int i = 0; i < 10; i++)
                            Container(
                              margin: EdgeInsets.only(
                                  left: 21, right: 21, bottom: 4),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/png/dena.png",
                                    height: 83,
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    "12 ta",
                                    style: AppStyle.textStyle15,
                                  )
                                ],
                              ),
                            )
                        ],
                      ),
                    ),
                    Divider(
                      color: AppColor.grey1,
                      height: 1,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      alignment: Alignment.center,
                      child: Container(
                          margin: EdgeInsets.only(left: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SvgPicture.asset(
                                    "assets/svg/chat.svg",
                                    height: 20,
                                    width: 10,
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "title",
                                          style: AppStyle.textStyle13,
                                        ),
                                      ]),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                  "Menga buyurtma juda tez kerak juda zarur Menga buyurtma juda tez kerak juda zarur Menga buyurtma juda tez kerak juda zarur Menga buyurtma juda tez kerak juda zarur Menga buyurtma juda tez kerak juda zarur Menga buyurtma juda tez kerak juda zarur Menga buyurtma juda tez kerak juda zarur Menga buyurtma juda tez kerak juda zarur")
                            ],
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: AppColor.grey1,
                      height: 1,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      alignment: Alignment.center,
                      child: Container(
                          margin: EdgeInsets.only(left: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SvgPicture.asset(
                                    "assets/svg/location.svg",
                                    height: 20,
                                    width: 10,
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Buyurtma hisoboti",
                                          style: AppStyle.textStyle13,
                                        ),
                                      ]),
                                ],
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 25, right: 25),
                                child: Row(
                                  children: [
                                    Text(
                                      "To'lov usuli",
                                      style: AppStyle.textStyle12,
                                    ),
                                    Spacer(),
                                    Text(
                                      "Naqd pul",
                                      style: AppStyle.textStyle12,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Divider(
                                color: AppColor.grey1,
                                height: 1,
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 25, right: 25),
                                child: Row(
                                  children: [
                                    Text(
                                      "Mahsulotlar narxi",
                                      style: AppStyle.textStyle12,
                                    ),
                                    Spacer(),
                                    Text(
                                      "100 000 so'm",
                                      style: AppStyle.textStyle12,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Divider(
                                color: AppColor.grey1,
                                height: 1,
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 25, right: 25),
                                child: Row(
                                  children: [
                                    Text(
                                      "Yetkazib berish",
                                      style: AppStyle.textStyle12,
                                    ),
                                    Spacer(),
                                    Text(
                                      "10 000 so'm",
                                      style: AppStyle.textStyle12,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Divider(
                                color: AppColor.grey1,
                                height: 1,
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 25, right: 25),
                                child: Row(
                                  children: [
                                    Text(
                                      "Jami",
                                      style: AppStyle.textStyle16,
                                    ),
                                    Spacer(),
                                    Text(
                                      "110 000 so'm",
                                      style: AppStyle.textStyle16,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: AppColor.white,
              child: Container(
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.only(right: 16, left: 16),
                height: 55,
                width: double.infinity,
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                      RouteList.literate2,
                    );
                  },
                  child: Text(
                    "Yana buyurtma berish",
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
            ),
          ],
        ),
      ),
    );
  }
}
