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
              padding: const EdgeInsets.all(8.0),
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
              padding: EdgeInsets.all(8),
              height: 65,
              width: double.infinity,
              // ignore: deprecated_member_use
              child: FlatButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(
                    RouteList.verification,
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
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
// next() async {
//   phoneNumber = "+998${_phoneNumberController.text.replaceAll(" ", '')}";
//   if (phoneNumber.length != 13) {
//     authNotifier.changePhoneShow(true);
//     return;
//   } else if (authNotifier.errorPhoneShow) {
//     authNotifier.changePhoneShow(false);
//   }
//   if (!authNotifier.isChecked) {
//     showCustomFlash("Maxfiylik siyosatiga rozilik bering!");
//     return;
//   }
//   await SmsAutoFill().listenForCode;
//   final appSignature = await SmsAutoFill().getAppSignature ?? '';
//   print("TTT: $appSignature");
//   bloc.addEvent(LoginEvent(phoneNumber: phoneNumber, appSignature: appSignature));
// }
}

// import 'package:flutter/material.dart';
// import 'package:shop_itgo_1/ui/base/base.dart';
//
// class LoginScreen extends BasePage {
//   @override
//   _RegistrationPhoneScreenState createState() => _RegistrationPhoneScreenState();
// }
//
// class _RegistrationPhoneScreenState extends BasePageState<LoginScreen> {
//   final FocusNode _phoneNumber = FocusNode();
//   final _phoneNumberController = TextEditingController();
//   AuthBloc bloc;
//   AuthNotifier authNotifier;
//   String phoneNumber = '';
//   final maskFormatter = MaskTextInputFormatter(
//     mask: ' ## ### ## ##',
//     filter: {"#": RegExp(r'[0-9]')},
//   );
//
//   @override
//   void dispose() {
//     SmsAutoFill().unregisterListener();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     bloc = Provider.of<AuthBloc>(context);
//     authNotifier = Provider.of<AuthNotifier>(context);
//
//     return KeyboardDismisser(
//       child: Scaffold(
//         body: SingleChildScrollView(
//           physics: BouncingScrollPhysics(),
//           child: Container(
//             height: size.height,
//             width: size.width,
//             child: StreamConsumer<AuthState>(
//               initialData: bloc.initialState,
//               stream: bloc.state,
//               listener: (_, state) async {
//                 if (state is LoginLoadingState) {
//                   Navigator.of(context).pushNamed(
//                     RouteList.verificationScreen,
//                     arguments: VerificationArguments(phone: phoneNumber),
//                   );
//                 } else if (state is LoginException) {
//                   showCustomFlash(state.message);
//                 }
//               },
//               builder: (context, snapshot) {
//                 return ModalProgressHUD(
//                   inAsyncCall: snapshot.data is LoginLoadingState,
//                   color: Colors.transparent,
//                   child: SafeArea(
//                     child: Stack(
//                       children: [
//                         Positioned(
//                           top: 0,
//                           left: 0,
//                           child: Image.asset(
//                             "assets/png/background_top_green.png",
//                             height: size.height / 4,
//                           ),
//                         ),
//                         Positioned(
//                           top: 0,
//                           left: 0,
//                           child: Image.asset("assets/png/background_top_grey.png", height: size.height / 4),
//                         ),
//                         Positioned(
//                           bottom: 300,
//                           right: 0,
//                           child: Image.asset("assets/png/background_bottom_grey.png", height: 246),
//                         ),
//                         Positioned(
//                           bottom: 280,
//                           right: 0,
//                           child: Image.asset("assets/png/background_bottom_green.png", height: 185),
//                         ),
//                         Positioned(
//                           left: 16.0,
//                           top: size.height / 5,
//                           right: 16,
//                           child: Image.asset(
//                             "assets/png/Logo.png",
//                             width: 214,
//                             height: 115,
//                           ),
//                         ),
//                         Positioned(
//                           left: 0,
//                           bottom: 0,
//                           right: 0,
//                           child: Material(
//                             elevation: 50.0,
//                             color: AppColor.white,
//                             borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
//                             child: Container(
//                               height: 300.0,
//                               padding: EdgeInsets.only(left: 16, right: 16, top: 50),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     "Telefon raqamingizni tasdiqlang",
//                                     style: AppStyle.telephoneTextStyle,
//                                   ),
//                                   SizedBox(
//                                     height: 20,
//                                   ),
//                                   customMaskTextField(
//                                       prefixText: "+998",
//                                       keyboardType: TextInputType.number,
//                                       controller: _phoneNumberController,
//                                       currentFocus: _phoneNumber,
//                                       nextFocus: null,
//                                       inputAction: TextInputAction.done,
//                                       onChanged: (String value) {
//                                         if(value.replaceAll(" ", '').length == 9){
//                                           hideKeyboard();
//                                         }
//                                       },
//                                       errorText: "Nomer notog'ri",
//                                       showError: authNotifier.errorPhoneShow,
//                                       maskFormatter: maskFormatter,
//                                       hintText: "Telefon"),
//                                   SizedBox(
//                                     height: 30,
//                                   ),
//                                   customButton(
//                                     text: "Yuborish",
//                                     function: next,
//                                   ),
//                                   SizedBox(
//                                     height: 16,
//                                   ),
//                                   CustomCheckBox(authNotifier: authNotifier)
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   next() async {
//     phoneNumber = "+998${_phoneNumberController.text.replaceAll(" ", '')}";
//     if (phoneNumber.length != 13) {
//       authNotifier.changePhoneShow(true);
//       return;
//     } else if (authNotifier.errorPhoneShow) {
//       authNotifier.changePhoneShow(false);
//     }
//     if (!authNotifier.isChecked) {
//       showCustomFlash("Maxfiylik siyosatiga rozilik bering!");
//       return;
//     }
//     await SmsAutoFill().listenForCode;
//     final appSignature = await SmsAutoFill().getAppSignature ?? '';
//     print("TTT: $appSignature");
//     bloc.addEvent(LoginEvent(phoneNumber: phoneNumber, appSignature: appSignature));
//   }
// }
