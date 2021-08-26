import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_itgo_1/core/utils/app_color.dart';
import 'package:shop_itgo_1/core/utils/app_style.dart';
void aa(){

  // ignore: deprecated_member_use
  FlatButton(
    onPressed: () {


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
  );
}
Widget customMaskTextField({
  TextEditingController controller,
  keyboardType,
  prefixText,
  inputAction,
  FocusNode currentFocus,
  hintText,
  nextFocus,
  Function filedFocus,
  onTap,
  errorText,
  showError,
  onChanged,
  maskFormatter,
  padding,
}) {
  return TextFormField(
    style: AppStyle.editText,
    controller: controller,
    focusNode: currentFocus,
    onTap: onTap,
    textCapitalization: TextCapitalization.sentences,
    onChanged: onChanged,
    onFieldSubmitted: (term) {
      filedFocus(currentFocus, nextFocus);
    },
    textInputAction: inputAction,
    inputFormatters: [maskFormatter],
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      filled: true,
      fillColor: AppColor.grey3,
      prefixIcon: Padding(
        padding: const EdgeInsets.only(left: 12.0, top: 12.1),
        child: Text(
          prefixText,
          style: AppStyle.editText,
        ),
      ),
      hintStyle: AppStyle.telephoneTextStyleSecond,
      suffixIcon: Visibility(
        visible: currentFocus.hasFocus && controller.text.isNotEmpty,
        child: Container(
          height: 24,
          width: 24,
          padding: EdgeInsets.only(
            left: 12,
            right: 12,
            top: 12,
            bottom: 12,
          ),
          child: InkWell(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColor.grey3,
                ),
                child: Icon(
                  Icons.close,
                  size: 20,
                  color: AppColor.yellow,
                ),
              ),
              onTap: () {
                onChanged('');
                controller.clear();
              }),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(color: AppColor.yellow, width: 0.5),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(color: AppColor.grey1, width: 0.5),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(color: AppColor.red, width: 0.5),
      ),
      errorText: showError ? errorText : null,
    ),
    cursorColor: AppColor.black,
    keyboardType: keyboardType,
  );
}
Widget customCodeTextField({
  TextEditingController controller,
  keyboardType,
  prefixText,
  inputAction,
  FocusNode currentFocus,
  nextFocus,
  Function filedFocus,
  onTap,
  errorText,
  showError,
  onChanged,
}) {
  return TextFormField(
    style: AppStyle.editText,
    controller: controller,
    focusNode: currentFocus,
    onTap: onTap,
    textCapitalization: TextCapitalization.sentences,
    onChanged: onChanged,
    onFieldSubmitted: (term) {
      filedFocus(currentFocus, nextFocus);
    },
    textInputAction: inputAction,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      filled: true,
      fillColor: AppColor.grey3,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(color: AppColor.yellow, width: 0.5),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(color: AppColor.grey1, width: 0.5),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(color: AppColor.red, width: 0.5),
      ),
      errorText: showError ? errorText : null,
    ),
    cursorColor: AppColor.black1,
    keyboardType: keyboardType,
  );
}

Widget customButton({Function function, Color textColor = AppColor.white, Color buttonSideColor, Color buttonColor = AppColor.assets, String text, double height = 48}) {
  return Container(
    height: height,
    width: double.infinity,
    // ignore: deprecated_member_use
    child: FlatButton(
      onPressed: function,
      child: Text(
        text,
        style: AppStyle.buttonTextStyle.copyWith(color: textColor),
        textAlign: TextAlign.center,
      ),
      color: AppColor.red,
      textColor: textColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
        side: BorderSide(
          color: buttonSideColor != null ? buttonSideColor : buttonColor,
          width: 0.5,
        ),
      ),
    ),
  );
}

Widget customTextField({
  TextEditingController controller,
  keyboardType,
  prefixText,
  inputAction,
  FocusNode currentFocus,
  hintText,
  label,
  nextFocus,
  errorText,
  showError,
  // Function filedFocus,
  onTap,
  onChanged,
  padding,
}) {
  return TextFormField(
    style: AppStyle.editText.copyWith(fontSize: 16),
    controller: controller,
    focusNode: currentFocus,
    onTap: onTap,
    onChanged: onChanged,
    // onFieldSubmitted: (term) {
    //   filedFocus(currentFocus, nextFocus);
    // },
    textCapitalization: TextCapitalization.sentences,
    textInputAction: inputAction,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      filled: true,
      fillColor: AppColor.grey3,
      hintText: hintText,
      hintStyle: AppStyle.textStyle14,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(color: AppColor.yellow, width: 1.5),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(color: AppColor.grey1, width: 1.5),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(color: AppColor.red, width: 1.5),
      ),
      prefixText: prefixText,
      errorText: showError ?? false ? errorText : null,
    ),
    cursorColor: AppColor.yellow,
    keyboardType: keyboardType,
  );
}Widget customLabelTextField({
  labelText,
  TextEditingController controller,
  keyboardType,
  prefixText,
  inputAction,
  FocusNode currentFocus,
  hintText,
  showError = false,
  errorText,
  nextFocus,
  maxLines = 1,
  Function filedFocus,
  onTap,
  onChanged,
}) {
  return TextFormField(
    style: AppStyle.editText,
    controller: controller,
    focusNode: currentFocus,
    onTap: onTap,
    textCapitalization: TextCapitalization.sentences,
    onChanged: onChanged,
    onFieldSubmitted: (term) {
      filedFocus(currentFocus, nextFocus);
    },
    maxLines: maxLines,
    textInputAction: inputAction,
    decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        filled: true,
        fillColor: AppColor.grey3,
        hintText: hintText,
        hintStyle: AppStyle.textStyle14,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: AppColor.yellow, width: 1.5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: AppColor.grey1, width: 1.5),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: AppColor.red, width: 1.5),
        ),
        prefixText: prefixText,
        errorText: showError ? errorText : null),
    cursorColor: AppColor.yellow,
    keyboardType: keyboardType,
  );
}
Widget customCardTextField({
  TextEditingController controller,
  keyboardType,
  prefixText,
  inputAction,
  FocusNode currentFocus,
  hintText,
  label,
  nextFocus,
  errorText,
  showError,
  // Function filedFocus,
  onTap,
  onChanged,
  padding,
}) {
  return TextFormField(
    style: AppStyle.editText.copyWith(fontSize: 16),
    controller: controller,
    focusNode: currentFocus,
    onTap: onTap,
    onChanged: onChanged,
    // onFieldSubmitted: (term) {
    //   filedFocus(currentFocus, nextFocus);
    // },
    textCapitalization: TextCapitalization.sentences,
    textInputAction: inputAction,
    decoration: InputDecoration(
      // contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      filled: true,
      fillColor: AppColor.white,
      hintText: hintText,
      hintStyle: AppStyle.textStyle14,
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColor.yellow, width: 2),
      ),
      enabledBorder: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(color: AppColor.grey1, width: 2),
      ),
      errorBorder: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(color: AppColor.red, width: 2),
      ),
      prefixText: prefixText,
      errorText: showError ?? false ? errorText : null,
    ),
    cursorColor: AppColor.yellow,
    keyboardType: keyboardType,
  );
}