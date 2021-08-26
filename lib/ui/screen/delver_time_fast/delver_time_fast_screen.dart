import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_itgo_1/core/utils/app_color.dart';
import 'package:shop_itgo_1/core/utils/app_style.dart';
import 'package:shop_itgo_1/ui/base/base.dart';
import 'package:shop_itgo_1/ui/base/route/route_constants.dart';
import 'package:shop_itgo_1/ui/screen/delver_time_fast/widgets/date_time.dart';

class DelverTimeFastScreen extends BasePage {
  @override
  _DelverTimeFastScreenState createState() => _DelverTimeFastScreenState();
}

class _DelverTimeFastScreenState extends BasePageState<DelverTimeFastScreen> {
  final DateTime _dateTimeNow = DateTime.now();
  final _fromTimeController = TextEditingController();
  final _toTimeController = TextEditingController();
  DateTime _fromDateTime;
  DateTime _toDateTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.white,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: AppColor.black1,
            onPressed: () {
              Navigator.of(context).pop();
            }),
        elevation: 0.0,
      ),
      backgroundColor: AppColor.white,
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
        children: [
            Center(
              child: Text(
                "Tezkor yetkazish vaqtini tanlang",
                maxLines: 2,
                style: AppStyle.textStyle1,
              ),
            ),
            SizedBox(height: 110,),


            SizedBox(height: 100,),
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
                  // Navigator.of(context).pushNamed(
                  //   RouteList.payment_type,
                  // );
                  showTime(
                    context: context,
                    currentTime: _toDateTime,
                    onConfirm: (date) async {
                      _toDateTime = date;
                      _toTimeController.text = "${_toDateTime.hour.toString().padLeft(2, '0')}:${_toDateTime.minute.toString().padLeft(2, '0')}";
                      // await Future.delayed(Duration(milliseconds: 50), () {
                      //   _fromAddressFocus.unfocus();
                      //   _toAddressFocus.unfocus();
                      // });
                    },
                  );
                },
                child: Text(
                  "Buyurtma berish",
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

        ],
      ),
          )),
    );
  }
}
