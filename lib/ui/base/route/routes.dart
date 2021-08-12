import 'package:flutter/material.dart';
import 'package:shop_itgo_1/ui/base/route/route_constants.dart';
import 'package:shop_itgo_1/ui/screen/sign_up/sign_up_screen.dart';
import 'package:shop_itgo_1/ui/screen/splash/splash_screen.dart';
import 'package:shop_itgo_1/ui/screen/verification/verification_screen.dart';

class Routes {
  static Map<String, WidgetBuilder> getRoutes(RouteSettings setting) => {
    RouteList.initial: (context) => SplashScreen(),
    RouteList.intro: (context) => SignUpScreen(),
    // RouteList.verification: (context) => VerificationScreen(),
    // RouteList.main: (context) => MainPage(menuArguments: setting.arguments),
    // RouteList.filter: (context) => FilterPosterPage(addAdsArguments: setting.arguments),
    // RouteList.paymentsScreen: (context) => PaymentsScreen(),
    // RouteList.tariffsScreen: (context) => TariffsScreen(),
    // RouteList.tariffsTypeInfo: (context) => TariffsTypeInfo(tariffArguments: setting.arguments,),
    // RouteList.payAccount: (context) => PayAccount(payAccountArguments: setting.arguments,),
    // RouteList.createPoster: (context) => CreatePosterScreen(advertisingArguments: setting.arguments),
    // RouteList.poster:(context)=>PosterScreen(),
    // RouteList.tariff:(context)=>TariffScreen(regTariffArguments: setting.arguments),
    // RouteList.registration:(context)=>RegistrationScreen(registrationArguments: setting.arguments,),
    // RouteList.loginScreen:(context)=>LoginScreen(),
    // RouteList.verificationScreen:(context)=>VerificationScreen(verificationArguments: setting.arguments,),
    // RouteList.editProfileScreen:(context)=>EditProfileScreen(),
    // RouteList.chatScreen:(context)=>ChatScreen(),
    // RouteList.webView:(context)=>WebViewScreen(webViewArguments: setting.arguments,),
  };
}
