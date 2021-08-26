import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shop_itgo_1/core/utils/app_color.dart';
import 'package:shop_itgo_1/core/utils/app_style.dart';
import 'package:shop_itgo_1/core/utils/custom_datetime_picker/flutter_datetime_picker.dart';
import 'package:shop_itgo_1/core/utils/custom_datetime_picker/src/datetime_picker_theme.dart';
class DatetimePickerPage extends StatefulWidget {
  @override
  _DatetimePickerPageState createState() => _DatetimePickerPageState();
}

class _DatetimePickerPageState extends State<DatetimePickerPage> {
  DateTime dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildDateTimePicker(),
          const SizedBox(height: 24),
          ButtonWidget(
            onClicked: () => Utils.showSheet(
              context,
              child: buildDateTimePicker(),
              onClicked: () {
                final value =
                DateFormat('MM/dd/yyyy HH:mm').format(dateTime);
                Utils.showSnackBar(context, 'Selected "$value"');

                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    ),
  );

  Widget buildDateTimePicker() => SizedBox(
    height: 180,
    child: CupertinoDatePicker(
      initialDateTime: dateTime,
      mode: CupertinoDatePickerMode.dateAndTime,
      minimumDate: DateTime(DateTime.now().year, 2, 1),
      maximumDate: DateTime.now(),
      use24hFormat: true,
      onDateTimeChanged: (dateTime) =>
          setState(() => this.dateTime = dateTime),
    ),
  );
}


class ButtonWidget extends StatelessWidget {
  final VoidCallback onClicked;

  const ButtonWidget({Key key, this.onClicked}) : super(key: key);


  @override
  Widget build(BuildContext context) => ElevatedButton(
    style: ElevatedButton.styleFrom(minimumSize: Size(100, 42)),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.more_time, size: 28),
        const SizedBox(width: 8),
        Text(
          'Show Picker',
          style: TextStyle(fontSize: 20),
        ),
      ],
    ),
    onPressed: onClicked,
  );
}
class Utils {
  static List<Widget> modelBuilder<M>(
      List<M> models, Widget Function(int index, M model) builder) =>
      models
          .asMap()
          .map<int, Widget>(
              (index, model) => MapEntry(index, builder(index, model)))
          .values
          .toList();


  static void showSheet(
      BuildContext context, { Widget child,  VoidCallback onClicked,}) =>
      showCupertinoModalPopup(
        context: context,
        builder: (context) => CupertinoActionSheet(
          actions: [
            child,
          ],
          cancelButton: CupertinoActionSheetAction(
            child: Text('Done'),
            onPressed: onClicked,
          ),
        ),
      );

  static void showSnackBar(BuildContext context, String text) {
    final snackBar = SnackBar(
      content: Text(text, style: TextStyle(fontSize: 24)),
    );

    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}

showTime({BuildContext context, Function onConfirm, DateTime currentTime}) {
  DatePicker.showTimePicker(
    context,
    showTitleActions: true,
    theme: DatePickerTheme(
      backgroundColor: AppColor.black1,
      cancelStyle: AppStyle.dateTimePickerCancelButton,
      doneStyle: AppStyle.dateTimePickerDoneButton,
      itemStyle: AppStyle.dateTimePickerItem,
    ),

    showSecondsColumn: false,
    onChanged: (date) {},
    onConfirm: onConfirm,
    currentTime: currentTime,

  );
}