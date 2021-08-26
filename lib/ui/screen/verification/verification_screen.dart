import 'package:flutter/material.dart';
import 'package:shop_itgo_1/core/utils/app_color.dart';
import 'package:shop_itgo_1/core/utils/app_style.dart';
import 'package:shop_itgo_1/ui/base/base.dart';
import 'package:shop_itgo_1/ui/base/route/route_constants.dart';
import 'package:shop_itgo_1/ui/screen/sign_up/widgets/widgets.dart';

class VerificationScreen extends BasePage {
  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends BasePageState<VerificationScreen> {
  // final FocusNode _code = FocusNode();
  final _codeController1 = TextEditingController();
  final _codeController2 = TextEditingController();
  final _codeController3 = TextEditingController();
  final _codeController4 = TextEditingController();

  bool showCodeInput = false;
  bool statusVerify = true;
  final FocusNode _code1 = FocusNode();
  final FocusNode _code2 = FocusNode();
  final FocusNode _code3 = FocusNode();
  final FocusNode _code4 = FocusNode();

  String phoneNumber = '';

  @override
  void dispose() {
    super.dispose();
  }



  // AuthBloc bloc;
  // AuthNotifier authNotifier;



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
              SizedBox(height: 20,),
              Wrap(
                children: [
                  Text(
                    "+998939876541 raqamga kod yuborildi",
                    style: AppStyle.textStyle1,
                    textAlign: TextAlign.center,
                  ),

                ],
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 50,
                    width:50,
                    child: customCodeTextField(
                        keyboardType: TextInputType.number,
                        controller: _codeController1,
                        currentFocus: _code1,
                        nextFocus: _code2,
                        inputAction: TextInputAction.done,
                        onChanged: (String value) {
                          if (value.replaceAll(" ", '').length == 1) {
                            hideKeyboard();
                          }
                        },
                        errorText: "code notog'ri",
                        showError: false,
                         ),
                  ),
                  Container(
                    height: 50,
                    width:50,
                    child: customCodeTextField(
                      keyboardType: TextInputType.number,
                      controller: _codeController2,
                      currentFocus: _code2,
                      nextFocus: _code3,
                      inputAction: TextInputAction.done,
                      onChanged: (String value) {
                        if (value.replaceAll(" ", '').length == 1) {
                          hideKeyboard();
                        }
                      },
                      errorText: "code notog'ri",
                      showError: false,
                    ),
                  ),
                  Container(
                    height: 50,
                    width:50,
                    child: customCodeTextField(
                      keyboardType: TextInputType.number,
                      controller: _codeController3,
                      currentFocus: _code3,
                      nextFocus: _code4,
                      inputAction: TextInputAction.done,
                      onChanged: (String value) {
                        if (value.replaceAll(" ", '').length == 1) {
                          hideKeyboard();
                        }
                      },
                      errorText: "code notog'ri",
                      showError: false,
                    ),
                  ),
                  Container(
                    height: 50,
                    width:50,

                    child: customCodeTextField(
                      keyboardType: TextInputType.number,
                      controller: _codeController4,
                      currentFocus: _code4,
                      nextFocus: null,
                      inputAction: TextInputAction.done,
                      // onChanged: (String value) {
                      //
                      //   if (value.replaceAll(" ", '').length == 1) {
                      //     hideKeyboard();
                      //   }
                      // },
                      errorText: "code notog'ri",
                      showError: false,
                    ),
                  ),

                ],
              ),
              SizedBox(height: 30,),
              Container(
                padding: EdgeInsets.only(right: 16,left: 16),
                height: 55,
                width: double.infinity,
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                      RouteList.sign_up2,
                    );
                  },
                  child: Text(
                    "Yuborish",
                    style:
                        AppStyle.buttonTextStyle.copyWith(color: AppColor.white),
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

  // next() async {
  //   final code = _codeController.text;
  //   if (code.length != 6) {
  //     // authNotifier.changeCodeShow(true);
  //     return;
  //   } else if (false) {
  //     // authNotifier.changeCodeShow(false);
  //   }
  //   // bloc.addEvent(VerifyEvent(
  //   //   phoneNumber: widget.verificationArguments.phone,
  //   //   code: code,
  //   // )
  // }
}
