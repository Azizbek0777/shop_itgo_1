import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_itgo_1/core/utils/app_color.dart';
import 'package:shop_itgo_1/core/utils/app_style.dart';
import 'package:shop_itgo_1/ui/base/base.dart';
import 'package:shop_itgo_1/ui/screen/categorie/widgets/widgets.dart';

class CategoriesScreen extends BasePage {
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends BasePageState<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [

            Center(
              child: SingleChildScrollView(
                child:CategoriesItem()
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50,left: 44,right: 44,bottom: 22),
              child: Text(
                "Mahsulotlar katalogi",
                style: TextStyle(  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: AppColor.black1,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
