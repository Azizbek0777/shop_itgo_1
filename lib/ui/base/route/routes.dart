import 'package:flutter/material.dart';
import 'package:shop_itgo_1/ui/base/route/route_constants.dart';
import 'package:shop_itgo_1/ui/page/main/main_page.dart';
import 'package:shop_itgo_1/ui/screen/account/account_screen.dart';
import 'package:shop_itgo_1/ui/screen/add_card/add_card_screen.dart';
import 'package:shop_itgo_1/ui/screen/address/address_screen.dart';
import 'package:shop_itgo_1/ui/screen/address_you/address_new_screen.dart';
import 'package:shop_itgo_1/ui/screen/address_you/address_you_screen.dart';
import 'package:shop_itgo_1/ui/screen/confirm_order/confirm_order_screen.dart';
import 'package:shop_itgo_1/ui/screen/delver/delver_screen.dart';
import 'package:shop_itgo_1/ui/screen/delver_time/delver_time_screen.dart';
import 'package:shop_itgo_1/ui/screen/delver_time_fast/delver_time_fast_screen.dart';
import 'package:shop_itgo_1/ui/screen/literate/literate_screen.dart';
import 'package:shop_itgo_1/ui/screen/literate2/liteate2_screen.dart';
import 'package:shop_itgo_1/ui/screen/love/love_screen.dart';
import 'package:shop_itgo_1/ui/screen/order_history/order_history_screen.dart';
import 'package:shop_itgo_1/ui/screen/order_history/order_history_second_screen.dart';
import 'package:shop_itgo_1/ui/screen/payment_type/payment_type_screen.dart';
import 'package:shop_itgo_1/ui/screen/product_first/product_first_screen.dart';
import 'package:shop_itgo_1/ui/screen/products/products_screen.dart';
import 'package:shop_itgo_1/ui/screen/sign_up/sign_up_screen.dart';
import 'package:shop_itgo_1/ui/screen/sign_up_2/sign_up_2_screen.dart';
import 'package:shop_itgo_1/ui/screen/sign_up_3/sign_up_3_screen.dart';
import 'package:shop_itgo_1/ui/screen/splash/splash_screen.dart';
import 'package:shop_itgo_1/ui/screen/verification/verification_screen.dart';
import 'package:shop_itgo_1/ui/screen/wallets/wallets_screen.dart';

class Routes {
  static Map<String, WidgetBuilder> getRoutes(RouteSettings setting) => {
    RouteList.initial: (context) => SplashScreen(),
    RouteList.intro: (context) => SignUpScreen(),
    RouteList.verification: (context) => VerificationScreen(),
    RouteList.sign_up2: (context) => SignUp2Screen(),
    RouteList.sign_up3: (context) => SignUp3Screen(),
    RouteList.main_page: (context) =>MainPage(menuArguments: setting.arguments,),
    RouteList.account: (context) => AccountScreen(),
    RouteList.address: (context) => AddressYouScreen(),
    RouteList.address_new: (context) => AddressNewScreen(),
    RouteList.order_history: (context) => OrderHistoryScreen(),
    RouteList.order_history_second: (context) => OrderHistorySecondScreen(),
    RouteList.literate2: (context) => Literate2Screen(),
    RouteList.product: (context) => ProductScreen(),
    RouteList.wallets: (context) => WalletsScreen(),
    RouteList.add_card: (context) => AddCardScreen(),
    RouteList.product_first: (context) => ProductFirstScreen(),
    RouteList.literate: (context) => LiterateScreen(),
    RouteList.address2: (context) => AddressScreen(),
    RouteList.delver: (context) => DelverScreen(),
    RouteList.delver_time: (context) => DelverTimeScreen(),
    RouteList.delver_time_fast: (context) => DelverTimeFastScreen(),
    RouteList.payment_type: (context) => PaymentTypeScreen(),
    RouteList.confirm_order: (context) => ConfirmOrderScreen(),



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
