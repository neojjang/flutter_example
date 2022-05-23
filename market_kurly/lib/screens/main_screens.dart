import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market_kurly/constants.dart';
import 'package:market_kurly/models/nav_item.dart';
import 'package:market_kurly/screens/category_screen.dart';
import 'package:market_kurly/screens/home_screen.dart';
import 'package:market_kurly/screens/my_kurly_screen.dart';
import 'package:market_kurly/screens/recommend_screen.dart';
import 'package:market_kurly/screens/search_screen.dart';

class MainScreens extends StatefulWidget {
  static String routeName = "/main_screens";

  const MainScreens({Key? key}) : super(key: key);

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomeScreen(),
          RecommendScreen(),
          CategoryScreen(),
          SearchScreen(),
          MyKurlyScreen()
        ],
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.purple,
      unselectedItemColor: Colors.black,
      currentIndex: _selectedIndex,
      backgroundColor: Colors.white,
      onTap: onTaped,
      items: List.generate(
        navItems.length,
        (index) => _buildBottomNavigationBarItem(
          icon: navItems[index].icon,
          label: navItems[index].label,
          isActive: navItems[index].id == _selectedIndex ? true : false,
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem(
      {String? icon,
      String? label,
      bool isActive = false,
      GestureTapCallback? press}) {
    return BottomNavigationBarItem(
        icon: SizedBox(
          width: 38,
          height: 38,
          child: IconButton(
            onPressed: press,
            icon: SvgPicture.asset(icon ?? "assets/icons/star.svg",
                color: isActive ? kPrimaryColor : Colors.black),
          ),
        ),
        label: label);
  }

  void onTaped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
