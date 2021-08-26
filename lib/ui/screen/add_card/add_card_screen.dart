import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_itgo_1/core/utils/app_color.dart';
import 'package:shop_itgo_1/core/utils/app_style.dart';
import 'package:shop_itgo_1/core/utils/functions.dart';
import 'package:shop_itgo_1/domain/notifier/main_notifier.dart';
import 'package:shop_itgo_1/ui/base/route/route_constants.dart';
import 'package:shop_itgo_1/ui/page/main/widgets/main_arguments.dart';
import 'package:shop_itgo_1/ui/screen/sign_up/widgets/widgets.dart';

class AddCardScreen extends StatefulWidget {
  @override
  _AddCardScreenState createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  final FocusNode _name = FocusNode();
  final FocusNode _address = FocusNode();
  final _cardNumbersController = TextEditingController();
  final _cardHolderController = TextEditingController();

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
            Navigator.of(context).pushNamed(RouteList.address, );
          },
        ),
      ),
      backgroundColor: AppColor.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Yangi karta qo'shish",
                style: AppStyle.textStyle1,
              ),
              Container(
                height: 175,
                width: double.infinity,
                margin:
                    EdgeInsets.only(right: 40, left: 40, bottom: 40, top: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: AppColor.assets,
                ),


              ),
              Container(
                margin: EdgeInsets.only(left: 16, right: 16),
                child: customCardTextField(
                  keyboardType: TextInputType.number,
                  controller: _cardNumbersController,
                  currentFocus: _name,
                  nextFocus: _address,

                  hintText: "Karta raqami",
                  // filedFocus: fieldFocusChange,
                  onChanged: (value) {},
                  errorText: "please_enter_your_first_and_last_name",
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.only(left: 16, right: 16),
                child: customCardTextField(
                  keyboardType: TextInputType.name,
                  controller: _cardHolderController,
                  currentFocus: _name,
                  nextFocus: _address,

                  hintText: "Karta egasi",
                  // filedFocus: fieldFocusChange,
                  onChanged: (value) {},
                  errorText: "please_enter_your_first_and_last_name",
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    width: 162,
                    margin: EdgeInsets.only(left: 16, right: 16),
                    child: customCardTextField(
                      keyboardType: TextInputType.name,
                      controller: _cardHolderController,
                      currentFocus: _name,
                      nextFocus: _address,

                      hintText: "Amal qilish muddati",
                      // filedFocus: fieldFocusChange,
                      onChanged: (value) {},
                      errorText: "please_enter_your_first_and_last_name",
                    ),
                  ),
                  Container(
                    width: 162,
                    margin: EdgeInsets.only(left: 16, right: 16),
                    child: customCardTextField(
                      keyboardType: TextInputType.name,
                      controller: _cardHolderController,
                      currentFocus: _name,
                      nextFocus: _address,

                      hintText: "Kodi",
                      // filedFocus: fieldFocusChange,
                      onChanged: (value) {},
                      errorText: "please_enter_your_first_and_last_name",
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.only(left: 16, right: 16),
                child: customCardTextField(
                  keyboardType: TextInputType.name,
                  controller: _cardHolderController,
                  currentFocus: _name,
                  nextFocus: _address,

                  hintText: "CV",
                  // filedFocus: fieldFocusChange,
                  onChanged: (value) {},
                  errorText: "please_enter_your_first_and_last_name",
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                padding: EdgeInsets.only(right: 16, left: 16),
                height: 55,
                width: double.infinity,
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Karta qo’shish",
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
        ),
      ),
    );
  }
}
