import 'package:anor_bank/presentation/screens/cards_screen/cards_screen.dart';
import 'package:anor_bank/presentation/screens/home_page/home_page.dart';
import 'package:anor_bank/presentation/screens/monitoring_screen/monitoring_screen.dart';
import 'package:anor_bank/presentation/screens/payment_screen/payment_screen.dart';
import 'package:anor_bank/presentation/screens/services_screen/services_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> bottomNavScreen() {
    return [
      const HomePage(),
      const CardsScreen(),
      const PaymentScreen(),
      const MonitoringScreen(),
      const ServicesScreen()
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.house),
        title: "Home",
        activeColorPrimary: const Color(0xFFA3295A),
        inactiveColorPrimary: Color(0xFF37363C),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.creditcard),
        title: "Kartalar",
        activeColorPrimary: const Color(0xFFA3295A),
        inactiveColorPrimary: Color(0xFF37363C),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.account_balance_wallet_outlined),
        title: "To'lov",
        activeColorPrimary: const Color(0xFFA3295A),
        inactiveColorPrimary: Color(0xFF37363C),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.time),
        title: "Monitoring",
        activeColorPrimary: const Color(0xFFA3295A),
        inactiveColorPrimary: Color(0xFF37363C),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.qr_code),
        title: "Xizmatlar",
        activeColorPrimary: const Color(0xFFA3295A),
        inactiveColorPrimary: const Color(0xFF37363C),
      ),
    ];
  }

  int currentTab = 0;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return PersistentTabView(
      context,
      controller: _controller,
      screens: bottomNavScreen(),
      items: _navBarsItems(),
      confineInSafeArea: false,
      backgroundColor: CupertinoColors.secondarySystemBackground,
      handleAndroidBackButtonPress: false,
      resizeToAvoidBottomInset: false,
      stateManagement: false,
      hideNavigationBarWhenKeyboardShows: false,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: false,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: false,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style3,
    );
  }
}
