import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_itgo_1/core/utils/app_color.dart';
import 'package:shop_itgo_1/core/utils/app_style.dart';
import 'package:shop_itgo_1/ui/screen/literate/widgets/widgets.dart';

class LoveScreen extends StatefulWidget {
  @override
  _LoveScreenState createState() => _LoveScreenState();
}

class _LoveScreenState extends State<LoveScreen> {
  TextEditingController editingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sevimli mahsulotlar",
          style: AppStyle.textStyle1,
        ),
        backgroundColor: AppColor.white,
        elevation: 0.0,
      ),
      backgroundColor: AppColor.white,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 70,
                ),
                for (int i = 0; i < 20; i++) Widgets()
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: AppColor.white,
            
            child: Container(
              margin: EdgeInsets.only(bottom: 20, left: 26, right: 26),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColor.white, borderRadius: BorderRadius.circular(25)),
              child: TextField(
                onChanged: (value) {
                  // filterSearchResults(value);
                },
                controller: editingController,
                decoration: InputDecoration(
                    labelText: "Search",
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
