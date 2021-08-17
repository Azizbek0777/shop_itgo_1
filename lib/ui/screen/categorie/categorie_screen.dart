import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_itgo_1/core/utils/app_color.dart';
import 'package:shop_itgo_1/core/utils/app_style.dart';
import 'package:shop_itgo_1/ui/base/base.dart';

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
            SizedBox(
              height: 400,
            ),
            Wrap(
              direction: Axis.vertical,
              children: [
                for (int i = 0; i < 10; i++)
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 20,
                    width: 100,
                    color: AppColor.red,
                  )
              ],
            ),
//             GridView.count(
//               crossAxisCount: 2,
//               scrollDirection: Axis.vertical,
//               children: [
//                 for (int i = 0; i < 16; i++)
//                   // Container(
//                   //   height: 30,
//                   //   width: 10,
//                   //   decoration: BoxDecoration(
//                   //     borderRadius: BorderRadius.circular(10),
//                   //     color: AppColor.white,
//                   //     border: Border.all(color: AppColor.yellow,width: 1)
//                   //   ),
//                   //   child: Center(
//                   //     child: Row(
//                   //       children: [
//                   //         SvgPicture.asset("assets/svg/home.svg"),
//                   //         Text("sabzavotlar")
//                   //       ],
//                   //     ),
//                   //   ),
//                   //
//                   // )
// MaterialButton(onPressed: (){},child: Text("jjj"),height: 20,color: AppColor.yellow,)
//               ],
//             ),
            Text(
              "kategoria",
              style: AppStyle.textStyle1,
            ),
          ],
        ),
      ),
    );
  }
}
