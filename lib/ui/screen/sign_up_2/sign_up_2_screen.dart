import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_itgo_1/core/utils/app_color.dart';
import 'package:shop_itgo_1/core/utils/app_style.dart';
import 'package:shop_itgo_1/core/utils/functions.dart';
import 'package:shop_itgo_1/domain/notifier/main_notifier.dart';
import 'package:shop_itgo_1/ui/base/base.dart';
import 'package:shop_itgo_1/ui/base/route/route_constants.dart';
import 'package:shop_itgo_1/ui/page/main/widgets/main_arguments.dart';
import 'package:shop_itgo_1/ui/screen/sign_up/widgets/widgets.dart';

class SignUp2Screen extends BasePage {
  @override
  _SignUp2ScreenState createState() => _SignUp2ScreenState();
}

class _SignUp2ScreenState extends BasePageState<SignUp2Screen> {
  final FocusNode _name = FocusNode();
  final FocusNode _address = FocusNode();
  final _nameController = TextEditingController();
  final _addressController = TextEditingController();
  final _dateBirthController = TextEditingController();
  final _maleController = TextEditingController();
  final _mailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                logo,
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Ma'lumotlaringizni kiriting",
                  style: AppStyle.textStyle1,
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 16, left: 16),
                  child: customTextField(
                    keyboardType: TextInputType.name,
                    controller: _nameController,
                    currentFocus: _name,
                    nextFocus: _address,
                    hintText: "first_name_last_name",
                    // filedFocus: fieldFocusChange,
                    onChanged: (value) {},
                    errorText: "please_enter_your_first_and_last_name",
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 16, left: 16),
                  child: customTextField(
                    keyboardType: TextInputType.name,
                    controller: _nameController,
                    currentFocus: _name,
                    nextFocus: _address,
                    hintText: "first_name_last_name",
                    // filedFocus: fieldFocusChange,
                    onChanged: (value) {},
                    errorText: "please_enter_your_first_and_last_name",
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 16, left: 16),
                  child: customTextField(
                    keyboardType: TextInputType.name,
                    controller: _nameController,
                    currentFocus: _name,
                    nextFocus: _address,
                    hintText: "first_name_last_name",
                    // filedFocus: fieldFocusChange,
                    onChanged: (value) {},
                    errorText: "please_enter_your_first_and_last_name",
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 16, left: 16),
                  child: customTextField(
                    keyboardType: TextInputType.name,
                    controller: _nameController,
                    currentFocus: _name,
                    nextFocus: _address,
                    hintText: "first_name_last_name",
                    // filedFocus: fieldFocusChange,
                    onChanged: (value) {},
                    errorText: "please_enter_your_first_and_last_name",
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.only(right: 16, left: 16),
                  height: 55,
                  width: double.infinity,
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed(
                        RouteList.sign_up3,
                      );
                    },
                    child: Text(
                      "Saqlash",
                      style: AppStyle.buttonTextStyle
                          .copyWith(color: AppColor.white),
                      textAlign: TextAlign.center,
                    ),
                    color: AppColor.yellow,
                    textColor: AppColor.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  child: Text(
                    "O'tkazib yuborish",
                    style: AppStyle.textStyle4,
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(RouteList.main_page,arguments: MenuArguments(bottomMenu: BottomMenu.menu_home, ));
                    Provider.of<MainNotifier>(context, listen: false).setIndex(1);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
