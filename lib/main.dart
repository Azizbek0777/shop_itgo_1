// import 'package:flutter/material.dart';
// import 'package:shop_itgo_1/ui/screen/splash/splash_screen.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: Shop(),
//     );
//   }
// }
// class Shop extends StatefulWidget {
//   @override
//   _ShopState createState() => _ShopState();
// }
//
// class _ShopState extends State<Shop> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: SplashScreen(),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_itgo_1/ui/base/base.dart';
import 'package:shop_itgo_1/ui/base/route/route_constants.dart';
import 'package:shop_itgo_1/ui/base/route/routes.dart';
import 'package:shop_itgo_1/ui/screen/splash/splash_screen.dart';

import 'core/utils/app_color.dart';
import 'domain/notifier/main_notifier.dart';

void main() {
  runApp(Shop());
}

class Shop extends BasePage {
  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends BasePageState<Shop> {
  @override
  void initState() {
    super.initState();

    // checkLatestVersion(context);
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MainNotifier()),
      ],
      child: MaterialApp(
        title: 'Baraka',
        theme: ThemeData(
          scaffoldBackgroundColor: AppColor.grey1,
          primaryColorDark: AppColor.white,
          primaryColor: AppColor.black1,
          accentColor: AppColor.grey2,
          appBarTheme: AppBarTheme(
            centerTitle: true,
          ),
          textSelectionTheme:
              TextSelectionThemeData(selectionHandleColor: AppColor.grey2),
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: RouteList.initial,
        onGenerateRoute: (RouteSettings settings) {
          final routes = Routes.getRoutes(settings);
          final WidgetBuilder builder = routes[settings.name];
          return MaterialPageRoute(
            builder: builder,
            settings: settings,
          );
        },
      ),
    );
  }
}
