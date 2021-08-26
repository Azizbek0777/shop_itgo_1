import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_itgo_1/core/utils/app_color.dart';
import 'package:shop_itgo_1/core/utils/app_style.dart';
import 'package:shop_itgo_1/ui/screen/literate/widgets/widgets.dart';

class ProductScreen extends StatefulWidget {

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      elevation: 0.0,
      backgroundColor: AppColor.white,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: AppColor.black1,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),

    ),

      backgroundColor: AppColor.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [

                Text(
                  "Ko’rilgan mahsulotlar",
                  style: AppStyle.textStyle11,
                ),
                SizedBox(
                  height: 30,
                ),
                for (int i = 0; i < 20; i++)
                  Widgets()                  ],
            ),
          ),
        ),
      ),
    );
  }
}
