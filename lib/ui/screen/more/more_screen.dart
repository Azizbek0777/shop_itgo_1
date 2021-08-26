import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_itgo_1/core/utils/app_color.dart';
import 'package:shop_itgo_1/core/utils/app_style.dart';
import 'package:shop_itgo_1/ui/base/route/route_constants.dart';
import 'package:shop_itgo_1/ui/screen/more/widgets/widgets.dart';

class MoreScreen extends StatefulWidget {
  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 16, right: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 57,
                  width: double.infinity,
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                    // onPressed: () {
                    //
                    // },
                    onPressed: null,
                    child: Container(
                      width: double.infinity,
                      child: Text(
                        "Balans: 20 000 so'm",
                        style: AppStyle.textStyle1,
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: AppColor.grey1,
                  thickness: 1,
                  height: 1,
                ),
                MoreWidgets(
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                      RouteList.account,
                    );
                  },
                  title: "Mening profilim",
                ),
                Divider(
                  color: AppColor.grey1,
                  thickness: 1,
                  height: 1,
                ),
                MoreWidgets(
                  onPressed: () {  Navigator.of(context).pushNamed(
                    RouteList.wallets,
                  );},
                  title: "Hamyonlar",
                ),
                Divider(
                  color: AppColor.grey1,
                  thickness: 1,
                  height: 1,
                ),
                MoreWidgets(
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                      RouteList.address,
                    );
                  },
                  title: "Manzillar ro'yxati",
                ),
                Divider(
                  color: AppColor.grey1,
                  thickness: 1,
                  height: 1,
                ),
                MoreWidgets(
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                      RouteList.order_history,
                    );
                  },
                  title: "Buyurtmalar tarixi",
                ),
                Divider(
                  color: AppColor.grey1,
                  thickness: 1,
                  height: 1,
                ),
                MoreWidgets(
                  onPressed: () {   Navigator.of(context).pushNamed(
                    RouteList.product,
                  );},
                  title: "Ko'rilgan mahsulotlar",
                ),
                Divider(
                  color: AppColor.grey1,
                  thickness: 1,
                  height: 1,
                ),
                MoreWidgets(
                  onPressed: () {},
                  title: "Biz bilan bog'lanish",
                ),
                Divider(
                  color: AppColor.grey1,
                  thickness: 1,
                  height: 1,
                ),
                MoreWidgets(
                  onPressed: () {},
                  title: "Ommaviy offerta",
                ),
                Divider(
                  color: AppColor.grey1,
                  thickness: 1,
                  height: 1,
                ),
                TextButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          elevation: 16,
                          child: Container(
                            height: 100.0,
                            width: 226.0,
                            child: buildName(),
                          ),
                        );
                      },
                    );
                  },
                  style: TextButton.styleFrom(backgroundColor: AppColor.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Til",
                        style: AppStyle.textStyle12,
                      ),
                      Text(
                        "uz",
                        style: AppStyle.textStyle12,
                      ),
                    ],
                  ),
                ),

                  Divider(
                    color: AppColor.grey1,
                    thickness: 1,
                    height: 1,
                  ),
                Container(
                  height: 57,
                  width: double.infinity,
                  alignment: Alignment.centerLeft,
                  child: TextButton(

                    onPressed: (){},
                    child: Container(
                      width: double.infinity,
                      child: Row(
                        children: [
                          Text(
                            "Tizimdan chiqish",
                            style: AppStyle.textStyle12,
                          ),
                          Spacer(),
                          SvgPicture.asset("assets/svg/logout.svg",height: 20,width: 20,)
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: AppColor.grey1,
                  thickness: 1,
                  height: 1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget buildName({
    String svgAsset,
    String name,
  }) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 15, bottom: 15),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              TextButton(
                style: TextButton.styleFrom(backgroundColor: AppColor.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  // Provider.of<CategoryBloc>(context, listen: false).addEvent(GetCategoryEvent());
                  // context.locale = Locale('uz', 'UZ');
                  // Provider.of<MenuBloc>(context, listen: false).addEvent(GetMenuEvent());
                  // Provider.of<HomeBloc>(context, listen: false).addEvent(GetHomeEvent(categoryId: Provider.of<MainNotifier>(context, listen: false).categoryId, page: 1));
                  // Provider.of<MyPosterBloc>(context, listen: false).addEvent(GetMyPosterEvent(status: 1));
                  // setLocale("uz");
                  // TaxiMi.setLocale(Locale('uz', 'UZ'));
                  Navigator.pop(context);
                },
                child: Column(
                  children: [
                    SvgPicture.asset(
                      "assets/svg/uzbekistan.svg",
                      height: 28,
                      width: 28,
                    ),
                    Text(
                      "UZ",
                      style: AppStyle.textStyle12,                    ),
                  ],
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: AppColor.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  // Provider.of<CategoryBloc>(context, listen: false).addEvent(GetCategoryEvent());
                  // context.locale = Locale('de', 'DE');
                  // Provider.of<MenuBloc>(context, listen: false).addEvent(GetMenuEvent());
                  // Provider.of<HomeBloc>(context, listen: false).addEvent(GetHomeEvent(categoryId: Provider.of<MainNotifier>(context, listen: false).categoryId, page: 1));
                  // Provider.of<MyPosterBloc>(context, listen: false).addEvent(GetMyPosterEvent(status: 1));
                  //
                  // setLocale("de");
                  // TaxiMi.setLocale(Locale('de', 'DE'));
                  Navigator.pop(context);
                },
                child: Column(
                  children: [
                    SvgPicture.asset(
                      "assets/svg/uzbekistan.svg",
                      height: 28,
                      width: 28,
                    ),
                    Text(
                      "УЗ",
                      style: AppStyle.textStyle12,                    ),
                  ],
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: AppColor.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  Navigator.pop(context);
                  // setLocale("ru");
                  // Provider.of<MenuBloc>(context, listen: false).addEvent(GetMenuEvent());
                  // Provider.of<HomeBloc>(context, listen: false).addEvent(GetHomeEvent(categoryId: Provider.of<MainNotifier>(context, listen: false).categoryId, page: 1));
                  // Provider.of<MyPosterBloc>(context, listen: false).addEvent(GetMyPosterEvent(status: 1));
                  //
                  // Provider.of<CategoryBloc>(context, listen: false).addEvent(GetCategoryEvent());
                  // TaxiMi.setLocale(Locale('ru', 'RU'));
                  // context.locale = Locale('ru', 'RU');
                },
                child: Column(
                  children: [
                    SvgPicture.asset(
                      "assets/svg/russia.svg",
                      height: 28,
                      width: 28,
                    ),
                    Text(
                      "РУ ",
                      style: AppStyle.textStyle12,                    ),
                  ],
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: AppColor.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  // context.locale = Locale('en', 'US');
                  // setLocale("en");
                  // Provider.of<CategoryBloc>(context, listen: false).addEvent(GetCategoryEvent());
                  // Provider.of<MenuBloc>(context, listen: false).addEvent(GetMenuEvent());
                  // Provider.of<HomeBloc>(context, listen: false).addEvent(GetHomeEvent(categoryId: Provider.of<MainNotifier>(context, listen: false).categoryId, page: 1));
                  // Provider.of<MyPosterBloc>(context, listen: false).addEvent(GetMyPosterEvent(status: 1));

                 // TaxiMi.setLocale(Locale('en', 'US'));
                  Navigator.pop(context);
                },
                child: Column(
                  children: [
                  // Image.asset("assets/png/united-states 1.png",height: 28,width: 28,),
                    SvgPicture.asset(
                      "assets/svg/united-states.svg",
                      height: 28,
                      width: 28,
                    ),
                    Text(
                      "EN",
                      style: AppStyle.textStyle12,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
}
}
