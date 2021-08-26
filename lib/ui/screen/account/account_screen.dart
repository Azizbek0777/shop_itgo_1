import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_itgo_1/core/storage/storage_utils.dart';
import 'package:shop_itgo_1/core/utils/app_color.dart';
import 'package:shop_itgo_1/core/utils/app_style.dart';
import 'package:shop_itgo_1/core/utils/functions.dart';
import 'package:shop_itgo_1/domain/notifier/main_notifier.dart';
import 'package:shop_itgo_1/ui/base/base.dart';
import 'package:shop_itgo_1/ui/base/route/route_constants.dart';
import 'package:shop_itgo_1/ui/page/main/widgets/main_arguments.dart';
import 'package:shop_itgo_1/ui/screen/sign_up/widgets/widgets.dart';

class AccountScreen extends BasePage {

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends BasePageState<AccountScreen> {
  final FocusNode _name = FocusNode();
final FocusNode _address = FocusNode();
TextEditingController _nameController = TextEditingController();
final _addressController = TextEditingController();
final _dateBirthController = TextEditingController();
final _maleController = TextEditingController();
TextEditingController _mailController = TextEditingController();
  String fullName = '';
  String mail = '';

    @override
  void initState() {
    getData();
    super.initState();
  }
  getData() async {
    await StorageUtil.getInstance();
    fullName = StorageUtil.getFullName();
    mail = StorageUtil.getMail();
    _nameController.text = fullName;
    _mailController.text = mail;
    // _addFolderNotifier.changeFile(File(StorageUtil.getProfileUrl()));
  }
@override
Widget build(BuildContext context) {
  return Scaffold(  appBar: AppBar(
    elevation: 0.0,
    backgroundColor: AppColor.white,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back_ios,
        color: AppColor.black1,
      ),
      onPressed: () {
        Navigator.of(context).pushNamed(RouteList.main_page,arguments: MenuArguments(bottomMenu: BottomMenu.menu_more, ));
        Provider.of<MainNotifier>(context, listen: false).setIndex(5);
      },
    ),

  ),
    backgroundColor: AppColor.white,
    body: SafeArea(
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
              "Ma'lumotlaringizni ",
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
                controller: _mailController,
                currentFocus: _name,
                nextFocus: _address,
                hintText: "mail",
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

          ],
        ),
      ),
    ));
}
}
