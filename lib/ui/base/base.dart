import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BasePage extends StatefulWidget {
  BasePage({Key key}) : super(key: key);

  @override
  BasePageState createState() => BasePageState();
}

class BasePageState<T extends BasePage> extends State<T> {


  final Widget logo=Image.asset("assets/png/logo.png",height: 55,width: 201,);

  @override
  Widget build(BuildContext context) {
    return Container();
  }



  void hideKeyboard() {
    FocusScope.of(context).requestFocus(FocusNode());
  }
}

Widget loader = Center(
  child: Platform.isAndroid ? CircularProgressIndicator() : CupertinoActivityIndicator(radius: 24, animating: true),
);


