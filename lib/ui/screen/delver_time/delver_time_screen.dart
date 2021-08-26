import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_itgo_1/core/utils/app_color.dart';
import 'package:shop_itgo_1/core/utils/app_style.dart';
import 'package:shop_itgo_1/ui/base/route/route_constants.dart';

class DelverTimeScreen extends StatefulWidget {
  @override
  _DelverTimeScreenState createState() => _DelverTimeScreenState();
}

class _DelverTimeScreenState extends State<DelverTimeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.white,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: AppColor.black1,
            onPressed: () {
              Navigator.of(context).pop();
            }),
        elevation: 0.0,
      ),
      backgroundColor: AppColor.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                  child: Text(
                "Yetkazib berish vaqtini tanlang",
                style: AppStyle.textStyle1,
              )),
              SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 6,
                    ),
                    Container(
                      height: 40,
                      width: 133,
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shadowColor: AppColor.yellow,
                          side: BorderSide(
                            width: 1,
                            color: AppColor.yellow,
                          ),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(14))),
                        ),
                        onPressed: () {
                          // Navigator.of(context).pushReplacementNamed(
                          //   RouteList.delver_time,
                          // );
                        },
                        child: Text(
                          "Bugun",
                          style: AppStyle.textStyle13,
                        ),
                      ),
                    ),
                    for (int i = 0; i < 10; i++)
                      Container(
                        height: 40,
                        width: 133,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            shadowColor: AppColor.yellow,
                            side: BorderSide(
                              width: 1,
                              color: AppColor.grey5,
                            ),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(14))),
                          ),
                          onPressed: () {

                          },
                          child: Text(
                            "15-sentabr",
                            style: AppStyle.textStyle13,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                height: 1,
                color: AppColor.grey5,
                thickness: 1,
              ),
              Container(
                height: 40,
                child: TextButton(

                    onPressed: () {  Navigator.of(context).pushNamed(
                      RouteList.payment_type,
                    );},
                    child: Row(
                      children: [
                        Text("9:00-10:00",style: AppStyle.textStyle12,),
                        Spacer(),
                        Text("Qabul qilinmaydi",style: AppStyle.textStyle19,)
                      ],
                    )),
              ),
              Divider(
                height: 1,
                thickness: 1,
                color: AppColor.grey5,
              ),
              for(int i=0;i<20;i++)
              Column(children: [
                Container(
                  height: 40,
                  child: TextButton(

                      onPressed: () {  Navigator.of(context).pushNamed(
                        RouteList.payment_type,
                      );},
                      child: Row(
                        children: [
                          Text("9:00-10:00",style: AppStyle.textStyle12,),
                          Spacer(),
                          Text("Qabul qilinadi",style: AppStyle.textStyle16,),
                          SizedBox(width: 12,),
                          Icon(Icons.arrow_forward_ios_outlined,color: AppColor.yellow,size: 12,)
                        ],
                      )),
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                  color: AppColor.grey5,
                ),
              ],)
            ],
          ),
        ),
      ),
    );
  }
}
