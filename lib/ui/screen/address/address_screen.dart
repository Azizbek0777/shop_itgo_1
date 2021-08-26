import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_itgo_1/core/utils/app_color.dart';
import 'package:shop_itgo_1/core/utils/app_style.dart';
import 'package:shop_itgo_1/ui/base/route/route_constants.dart';
import 'package:shop_itgo_1/ui/screen/sign_up/widgets/widgets.dart';

class AddressScreen extends StatefulWidget {
  @override
  _AddressScreenState createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  final _commentController = TextEditingController();
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
      appBar: AppBar(
        backgroundColor: AppColor.white,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios),color: AppColor.black1, onPressed: () {               Navigator.of(context).pop();
        }),
        elevation: 0.0,
      ),
      backgroundColor: AppColor.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
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
                  hintText: "Tuman",
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
                  hintText: "Mo'ljal",
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
                  hintText: "Ko'cha va uy raqami",
                  // filedFocus: fieldFocusChange,
                  onChanged: (value) {},
                  errorText: "please_enter_your_first_and_last_name",
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 100,
                padding: EdgeInsets.only(right: 16, left: 16),
                child: customLabelTextField(
                  nextFocus: null,
                  maxLines: 5,
                  hintText: "Izoh",
                  keyboardType: TextInputType.text,
                  inputAction: TextInputAction.done,
                  currentFocus: null,
                  controller: _commentController,
                  filedFocus: null,
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
                    Navigator.of(context).pushNamed(
                      RouteList.delver,
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
                  "Xarita",
                  style: AppStyle.textStyle4,
                ),
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
