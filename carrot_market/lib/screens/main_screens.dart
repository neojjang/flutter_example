import 'package:carrot_market/screens/chatting_screen.dart';
import 'package:carrot_market/screens/home_screen.dart';
import 'package:carrot_market/screens/my_carrot_screen.dart';
import 'package:carrot_market/screens/near_me_screen.dart';
import 'package:carrot_market/screens/neighborhood_life_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({Key? key}) : super(key: key);

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("AppBar"),
      // ),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomeScreen(),
          NeighborhoodLifeScreen(),
          NearMeScreen(),
          ChattingScreen(),
          MyCarrotScreen()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: "홈",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.square_on_square),
            label: "동네생활",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.placemark),
            label: "내 근처",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble),
            label: "채팅",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: "나의 당근",
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.redAccent,
        unselectedItemColor: Colors.black54,
      ),
    );
  }
}
