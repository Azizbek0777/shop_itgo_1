import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:shop_itgo_1/core/utils/app_color.dart';
import 'package:shop_itgo_1/core/utils/app_style.dart';
import 'package:shop_itgo_1/ui/base/base.dart';
import 'package:shop_itgo_1/ui/base/route/route_constants.dart';
import 'package:shop_itgo_1/ui/screen/sign_up/widgets/widgets.dart';

class SignUpScreen extends BasePage {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends BasePageState<SignUpScreen> {
  final FocusNode _phoneNumber = FocusNode();
  String phoneNumber = '';

  @override
  void dispose() {
    super.dispose();
  }

  final _phoneNumberController = TextEditingController();
  final maskFormatter = MaskTextInputFormatter(
    mask: ' ## ### ## ##',
    filter: {"#": RegExp(r'[0-9]')},
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              logo,
              Text(
                "Ro'yhatdan o'tish uchun telefon raqamingizni kiriting",
                style: AppStyle.textStyle1,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: EdgeInsets.only(right: 16, left: 16),
                child: customMaskTextField(
                    prefixText: "+998",
                    keyboardType: TextInputType.number,
                    controller: _phoneNumberController,
                    currentFocus: _phoneNumber,
                    nextFocus: null,
                    inputAction: TextInputAction.done,
                    onChanged: (String value) {
                      if (value.replaceAll(" ", '').length == 9) {
                        hideKeyboard();
                      }
                    },
                    errorText: "Nomer notog'ri",
                    showError: false,
                    maskFormatter: maskFormatter,
                    hintText: "Telefon"),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(right: 16, left: 16),
                height: 55,
                width: double.infinity,
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                      RouteList.verification,
                    );
                  },
                  child: Text(
                    "Yuborish",
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
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }

}


