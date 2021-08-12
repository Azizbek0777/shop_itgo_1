// import 'package:flutter/material.dart';
// import 'package:shop_itgo_1/core/utils/app_color.dart';
// import 'package:shop_itgo_1/core/utils/app_style.dart';
// import 'package:shop_itgo_1/ui/base/base.dart';
// import 'package:shop_itgo_1/ui/base/route/route_constants.dart';
// import 'package:shop_itgo_1/ui/screen/sign_up/widgets/widgets.dart';
// import 'package:sms_autofill/sms_autofill.dart';
//
// class VerificationScreen extends BasePage {
//
//
//   @override
//   _VerificationScreenState createState() => _VerificationScreenState();
// }
//
// class _VerificationScreenState extends BasePageState<VerificationScreen> {
//   final FocusNode _code = FocusNode();
//   final _codeController = TextEditingController();
//   bool showCodeInput = false;
//   bool statusVerify = true;
//   // AuthBloc bloc;
//   // AuthNotifier authNotifier;
//
//   @override
//   void dispose() {
//     // bloc?.addEvent(AuthInitialEvent());
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return  Scaffold(
//       body: Container(
//           child: SafeArea(
//             child: Center(
//               child: Column(
//                 children: [
//                   logo,
//
//                   Container(
//                     padding: EdgeInsets.all(8),
//                     height: 65,
//                     width: double.infinity,
//                     // ignore: deprecated_member_use
//                     child: FlatButton(
//                       onPressed: () {
//                         Navigator.of(context).pushReplacementNamed(
//                           RouteList.verification,
//                         );
//                       },
//                       child: Text(
//                         "Yuborish",
//                         style:
//                         AppStyle.buttonTextStyle.copyWith(color: AppColor.white),
//                         textAlign: TextAlign.center,
//                       ),
//                       color: AppColor.yellow,
//                       textColor: AppColor.white,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12.0),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           )
//       ),
//     );
//   }
//
//   next() async {
//     final code = _codeController.text;
//     if (code.length != 6) {
//       // authNotifier.changeCodeShow(true);
//       return;
//     } else if (false) {
//       // authNotifier.changeCodeShow(false);
//     }
//     // bloc.addEvent(VerifyEvent(
//     //   phoneNumber: widget.verificationArguments.phone,
//     //   code: code,
//     // )
//   }
// }
