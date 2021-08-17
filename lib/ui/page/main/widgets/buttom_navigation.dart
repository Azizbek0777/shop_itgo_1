import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:shop_itgo_1/core/utils/app_color.dart';
import 'package:shop_itgo_1/core/utils/app_style.dart';
import 'package:shop_itgo_1/core/utils/functions.dart';
import 'package:shop_itgo_1/domain/notifier/main_notifier.dart';

class BottomNavBar extends StatelessWidget {
  final MainNotifier notifier;

  BottomNavBar({this.notifier});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabBar(
      backgroundColor: AppColor.white,
      inactiveColor: AppColor.black,
      activeColor: AppColor.assets,
      items: [
        _buildMenuItem(
          right: 24,
          left: 24,
          icon: SvgPicture.asset(
            'assets/svg/home.svg',
            height: 24,
            width: 22,
            color: _setMenuItemColor(bottomMenu: BottomMenu.menu_home),
          ),
          bottomMenu: BottomMenu.menu_home,
        ),
        _buildMenuItem(
          right: 24,
          left: 24,
          icon: SvgPicture.asset(
            'assets/svg/menu.svg',
            height: 24,
            width: 22,
            color: _setMenuItemColor(bottomMenu: BottomMenu.menu_menu),
          ),
          bottomMenu: BottomMenu.menu_menu,
        ),
        _buildMenuItem(
          right: 24,
          left: 24,
          icon: SvgPicture.asset(
            'assets/svg/literate.svg',
            height: 24,
            width: 22,
            color: _setMenuItemColor(bottomMenu: BottomMenu.menu_literate),
          ),
          bottomMenu: BottomMenu.menu_literate,
        ),
        _buildMenuItem(
          right: 24,
          left: 24,
          icon: SvgPicture.asset(
            'assets/svg/love.svg',
            height: 24,
            width: 22,
            color: _setMenuItemColor(bottomMenu: BottomMenu.menu_love),
          ),
          bottomMenu: BottomMenu.menu_love,
        ),
        _buildMenuItem(
          right: 24,
          left: 24,
          icon: SvgPicture.asset(
            'assets/svg/more.svg',
            height: 24,
            width: 22,
            color: _setMenuItemColor(bottomMenu: BottomMenu.menu_more),
          ),
          bottomMenu: BottomMenu.menu_more,
        ),
      ],
      onTap: (value) {
        notifier.changeIndex(value);
      },
    );
  }

  BottomNavigationBarItem _buildMenuItem(
      {Widget icon, BottomMenu bottomMenu, double right = 0, double left = 0}) {
    return BottomNavigationBarItem(
      icon: Padding(
        padding: EdgeInsets.only(right: right, left: left),
        child: icon,
      ),
      // ignore: deprecated_member_use
    );
  }

  Color _setMenuItemColor({BottomMenu bottomMenu}) =>
      notifier.index == bottomMenu.index ? AppColor.yellow : AppColor.grey4;
}
