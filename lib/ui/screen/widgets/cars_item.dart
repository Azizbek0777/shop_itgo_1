// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:shop_itgo_1/core/utils/app_color.dart';
// import 'package:shop_itgo_1/core/utils/app_style.dart';
//
//
// class CarItem extends StatelessWidget {
//   final Cars car;
//   final AddNotifier notifier;
//
//   CarItem({this.car, this.notifier});
//
//   @override
//   Widget build(BuildContext context) {
//     bool isChecked = false;
//     notifier.filterCar.forEach((element) {
//       if (element.id == car.id) {
//         isChecked = true;
//       }
//     });
//
//     return Container(
//       width: double.infinity,
//       decoration: BoxDecoration(
//         color: isChecked ? AppColor.black : Colors.transparent,
//         border: Border.all(color: AppColor.assets, width: 1),
//         borderRadius: BorderRadius.all(Radius.circular(4)),
//       ),
//       child: InkWell(
//         onTap: () {
//           notifier.changeFilterCar(car, isChecked);
//         },
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             car.title,
//             style: AppStyle.label.copyWith(color: isChecked ? AppColor.white : AppColor.black),
//           ),
//         ),
//       ),
//     );
//   }
// }
