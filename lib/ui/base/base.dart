import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasePage extends StatefulWidget {
  BasePage({Key key}) : super(key: key);

  @override
  BasePageState createState() => BasePageState();
}

class BasePageState<T extends BasePage> extends State<T> {
  // final translator = GoogleTranslator();

  final Widget logo = SvgPicture.asset(
    'assets/svg/logo.svg',
    semanticsLabel: 'TaxiMi Logo',
    width: 70,
    height: 30,
  );

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  void showCustomFlash(

      String message, {
        FlashPosition position = FlashPosition.top,
        FlashStyle style = FlashStyle.floating,
        Alignment alignment,
      }) {
    showFlash(
      context: context,
      duration: Duration(milliseconds: 3500),
      builder: (_, controller) {
        return Flash(
          controller: controller,
          backgroundColor: Color(0xFFd50000),
          borderRadius: BorderRadius.circular(8.0),
          borderColor: Colors.transparent,
          position: position,
          style: style,
          margin: EdgeInsets.all(12),
          alignment: alignment,
          enableDrag: false,
          onTap: () => controller.dismiss(),
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              message,
              // style: AppStyle.comment.copyWith(fontSize: 17, color: AppColor.white, fontStyle: FontStyle.normal),
            ),
          ),
        );
      },
    );
  }

  void hideKeyboard() {
    FocusScope.of(context).requestFocus(FocusNode());
  }
}

Widget loader = Center(
  child: Platform.isAndroid ? CircularProgressIndicator() : CupertinoActivityIndicator(radius: 24, animating: true),
);

/*
/// Checking for update
void checkLatestVersion(context) async {
  // await Future.delayed(Duration(seconds: 5));

  //Get Latest version info from firebase config
  final RemoteConfig remoteConfig = await RemoteConfig.instance;

  try {
    // Using default duration to force fetching from remote server.
    await remoteConfig.fetch(expiration: const Duration(seconds: 0));
    await remoteConfig.activateFetched();

    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    Version currentVersion = Version.parse(packageInfo.version);

    Version androidVersion = Version.parse(remoteConfig.getString('android_version'));
    Version iosVersion = Version.parse(remoteConfig.getString('ios_version'));
    Version appVersion = Platform.isIOS ? iosVersion : androidVersion;
    final required = remoteConfig.getBool(Platform.isAndroid ? "android_required" : "ios_required") ?? false;

    if (appVersion > currentVersion) {
      if (required) {
        _showCompulsoryUpdateDialog(
          context,
          "${localisedString(context, 'please_update')} ${appVersion ?? ""}",
        );
      } else {
        SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

        bool showUpdates = false;
        showUpdates = sharedPreferences.getBool('UpdateDialog');
        if (showUpdates != null && showUpdates == false) {
          return;
        }
        _showOptionalUpdateDialog(
          context, "${localisedString(context, 'available')} ${appVersion ?? ""}",
        );
      }
    } else {}
  } on FetchThrottledException catch (exception) {
    // Fetch throttled.
    print(exception);
  } catch (exception) {}
}

_showOptionalUpdateDialog(context, String message) async {
  await showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      String title = localisedString(context, 'app_update_available');
      String btnLabel = localisedString(context, 'update_now');
      String btnLabelCancel = localisedString(context, 'later');
      String btnLabelDontAskAgain = localisedString(context, 'do_not');
      return DoNotAskAgainDialog(
        localisedString(context, 'update_dialog'),
        title,
        message,
        btnLabel,
        btnLabelCancel,
        _onUpdateNowClicked,
        doNotAskAgainText: Platform.isIOS ? btnLabelDontAskAgain : localisedString(context, 'never_ask_again'),
      );
    },
  );
}

_onUpdateNowClicked() {
  LaunchReview.launch(androidAppId: "it.go.taximI", iOSAppId: "");
}

_showCompulsoryUpdateDialog(context, String message) async {
  await showDialog<String>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      String title = localisedString(context, 'app_update_available');
      String btnLabel = localisedString(context, 'update_now');
      return Platform.isIOS
          ? CupertinoAlertDialog(
              title: Text(title),
              content: Text(message),
              actions: <Widget>[
                CupertinoDialogAction(
                  child: Text(
                    btnLabel,
                  ),
                  isDefaultAction: true,
                  onPressed: _onUpdateNowClicked,
                ),
              ],
            )
          : AlertDialog(
        backgroundColor: AppColor.primaryColor,
              title: Text(
                title + " $message",
                style: AppStyle.comment.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 17
                ),
              ),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
              actions: <Widget>[
                FlatButton(
                  child: Text(btnLabel, style: AppStyle.comment.copyWith(
                      fontWeight: FontWeight.w500,
                    color: AppColor.assets
                  ),),
                  onPressed: _onUpdateNowClicked,
                ),
              ],
            );
    },
  );
}
*/
