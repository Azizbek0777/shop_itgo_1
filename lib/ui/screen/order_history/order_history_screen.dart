import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_itgo_1/core/utils/app_color.dart';
import 'package:shop_itgo_1/core/utils/app_style.dart';
import 'package:shop_itgo_1/ui/base/route/route_constants.dart';
import 'package:shop_itgo_1/ui/screen/address_you/widgets/widgets.dart';

class OrderHistoryScreen extends StatefulWidget {
  @override
  _OrderHistoryScreenState createState() => _OrderHistoryScreenState();
}

class _OrderHistoryScreenState extends State<OrderHistoryScreen> {
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
        child: ListView(
          physics: BouncingScrollPhysics(),
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
            Divider(
              color: AppColor.grey1,
              height: 1,
            ),
            for (int i = 0; i < 30; i++)
              Column(
                children: [
                  AddressYouWidgets(
                    title: "15 ta mahsulot",

                    subtitle: "17-sentabr, 16:00 - 17:00",
                    icon: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 17,
                      color: AppColor.yellow,
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        RouteList.order_history_second,
                      );
                    },
                  ),
                  Divider(
                    color: AppColor.grey1,
                    height: 1,
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
