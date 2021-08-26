import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_itgo_1/core/utils/app_color.dart';
import 'package:shop_itgo_1/core/utils/app_style.dart';

class MoreWidgets extends StatelessWidget {
  final title;

  const MoreWidgets({
    Key key,
    this.title,
    this.onPressed,
  }) : super(key: key);
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57,
      width: double.infinity,
      alignment: Alignment.centerLeft,
      child: TextButton(
        onPressed: onPressed,
        child: Container(
          width: double.infinity,
          child: Row(
            children: [
              Text(
                title,
                style: AppStyle.textStyle12,
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
