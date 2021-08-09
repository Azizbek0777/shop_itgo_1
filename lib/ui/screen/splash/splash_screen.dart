import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:  Image.asset("assets/png/mar.png",height: 200,width: 500,),
      )
    );
  }
}

class SplashScreen extends BasePage {
  @override

  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends BasePageState<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset("assets/png/background_top_green.png"),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset("assets/png/background_top_grey.png"),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset("assets/png/background_bottom_grey.png"),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset("assets/png/background_bottom_green.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Align(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/png/Logo.png",
                height: 115,
                width: 214,
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    openNextPage(context);
  }

  openNextPage(BuildContext context) async {
    Timer(Duration(milliseconds: 2000), () async {
      await StorageUtil.getInstance();
      final hasProfile = StorageUtil.hasProfile();
      if (hasProfile) {
        Provider.of<CategoryBloc>(context, listen: false).addEvent(GetCategoryEvent());
        Navigator.of(context).pushReplacementNamed(
          RouteList.categories,
        );
      } else {
        Navigator.of(context).pushReplacementNamed(
          RouteList.intro,
        );
      }
    });
  }
}
