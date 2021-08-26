import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_itgo_1/core/utils/app_color.dart';
import 'package:shop_itgo_1/core/utils/app_style.dart';
import 'package:shop_itgo_1/ui/base/route/route_constants.dart';
import 'package:shop_itgo_1/ui/screen/address_you/widgets/widgets.dart';
import 'package:shop_itgo_1/ui/screen/more/widgets/widgets.dart';

class AddressYouScreen extends StatefulWidget {
  @override
  _AddressYouScreenState createState() => _AddressYouScreenState();
}

class _AddressYouScreenState extends State<AddressYouScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: AppColor.black1,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: AppColor.white,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            ListView(
              physics: BouncingScrollPhysics(),
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Manzillaringiz",
                    style: AppStyle.textStyle1,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Divider(
                  color: AppColor.grey1,
                  thickness: 1,
                  height: 1,
                ),
                for (int i = 0; i < 20; i++)
                  Column(
                    children: [
                      AddressYouWidgets(
                        title: "Yunusobod 19-kv",
                        subtitle: "Nurafshon ko'chasi,12A",
                        icon: Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 17,
                          color: AppColor.yellow,
                        ),
                        onTap: () {},
                      ),
                      Divider(
                        color: AppColor.grey1,
                        thickness: 1,
                        height: 1,
                      ),
                    ],
                  ),
              ],
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
                      RouteList.address_new,
                    );
                  },
                  child: Text(
                    "Manzil qo'shish",
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
