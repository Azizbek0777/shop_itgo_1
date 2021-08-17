import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:shop_itgo_1/domain/notifier/main_notifier.dart';
import 'package:shop_itgo_1/ui/base/base.dart';
import 'package:shop_itgo_1/ui/page/main/widgets/buttom_navigation.dart';
import 'package:shop_itgo_1/ui/page/main/widgets/main_arguments.dart';
import 'package:shop_itgo_1/ui/screen/categorie/categorie_screen.dart';
import 'package:shop_itgo_1/ui/screen/home/home_screen.dart';
import 'package:shop_itgo_1/ui/screen/sign_up/sign_up_screen.dart';
import 'package:shop_itgo_1/ui/screen/sign_up_2/sign_up_2_screen.dart';
import 'package:shop_itgo_1/ui/screen/sign_up_3/sign_up_3_screen.dart';

class MainPage extends BasePage {
  final MenuArguments menuArguments;
  MainPage({Key key, @required this.menuArguments,})  : assert(menuArguments != null, 'arguments must not be null'), super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends BasePageState<MainPage> {
  bool showProgress = false;

  bool isChange = false;
  // int categoryMenuIndex = 1;


  @override
  void initState() {
    super.initState();
    // categoryMenuIndex = widget.menuArguments.categoryId - 1;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mainNotifier = Provider.of<MainNotifier>(context);

    if (!isChange) {
      isChange = true;
      mainNotifier.setIndex(widget.menuArguments.bottomMenu.index);
    }

    return Scaffold(
      body: IndexedStack(
        children: [
          HomeScreen(),
          CategoriesScreen(),
          SignUpScreen(),
          SignUp2Screen(),
          SignUpScreen(),

        ],

        index: mainNotifier.index,
      ),
      bottomNavigationBar: BottomNavBar(
        notifier: mainNotifier,
      ),
    );
  }
}
