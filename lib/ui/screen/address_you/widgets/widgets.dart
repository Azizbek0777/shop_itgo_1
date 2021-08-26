import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_itgo_1/core/utils/app_color.dart';
import 'package:shop_itgo_1/core/utils/app_style.dart';

class AddressYouWidgets extends StatelessWidget {
  final title;
  final icon;
  final onTap;
  final subtitle;

  const AddressYouWidgets({
    Key key,
    this.title,
    this.icon,
    this.subtitle,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(
        title,
        style: AppStyle.textStyle13,
      ),
      subtitle: Text(subtitle, style: AppStyle.textStyle12),
      trailing: icon,
    );
  }
}

class AddressYou2Widgets extends StatelessWidget {
  final title;
  final icon;
  final onTap;
  final subtitle;
  final leading;

  const AddressYou2Widgets(
      {Key key, this.title, this.icon, this.subtitle, this.onTap, this.leading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return FlatButton(
        onPressed: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              leading,
              height: 20,
              width: 10,
            ),
            SizedBox(
              width: 7,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: AppStyle.textStyle13,),
                Text(subtitle, style: AppStyle.textStyle12,)],
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: icon,
            )
          ],
        ));
  }
}
