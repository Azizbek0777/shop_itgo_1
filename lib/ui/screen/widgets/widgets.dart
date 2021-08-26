
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:shop_itgo_1/core/utils/app_color.dart';
// import 'package:shop_itgo_1/core/utils/app_style.dart';
//
// import 'cars_item.dart';
//
//
// class CustomCarWidget extends StatelessWidget {
//   final ExpandableController controller;
//   final AddNotifier filterNotifier;
//   final List<Cars> cars;
//   final ScrollController _scrollController = ScrollController();
//
//   CustomCarWidget(
//       {this.filterNotifier,
//         this.cars,
//         this.controller,
//       });
//
//   @override
//   Widget build(BuildContext context) {
//     return ExpandableNotifier(
//       controller: controller,
//       child: Column(
//         children: [
//
//           ScrollOnExpand(
//             child: ExpandablePanel(
//               expanded: Container(
//                 height: 280,
//                 margin: EdgeInsets.only(top: 16),
//                 width:double.infinity,
//                 padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
//                 decoration: BoxDecoration(
//                     color: AppColor.white,
//                     border: Border.all(color: AppColor.black),
//                     borderRadius: BorderRadius.all(Radius.circular(6))),
//                 child: Scrollbar(
//                   child: SingleChildScrollView(
//                     child: Padding(
//                       padding: const EdgeInsets.only(right:10.0),
//                       child: Wrap(
//                         spacing: 8.0,
//                         runSpacing: 8.0,
//                         crossAxisAlignment: WrapCrossAlignment.start,
//                         alignment: WrapAlignment.start,
//                         direction: Axis.horizontal,
//                         children: [
//                           for (int i = 0; i < cars.length; i++)
//                             CarItem(
//                               notifier: filterNotifier,
//                               car: cars[i],
//                             ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class Cars {
// }
//
// class AddNotifier {
// }
//
// class ExpandableController {
// }
//
