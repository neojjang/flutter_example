import 'package:flutter/material.dart';
import 'package:flutter_profile/profile_buttons.dart';
import 'package:flutter_profile/profile_count_info.dart';
import 'package:flutter_profile/profile_drawer.dart';
import 'package:flutter_profile/profile_header.dart';
import 'package:flutter_profile/profile_tab.dart';
import 'package:flutter_profile/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      home: const ProfilePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildProfileAppBar(),
      endDrawer: ProfileDrawer(),
      // drawer: ProfileDrawer(),
      body: Column(
        children: <Widget>[
          SizedBox(height: 20),
          ProfileHeader(),
          SizedBox(
            height: 20,
          ),
          ProfileCountInfo(),
          SizedBox(
            height: 20,
          ),
          ProfileButtons(),
          Expanded(child: ProfileTab())
        ],
      ),
    );
  }

  AppBar _buildProfileAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      leading: Icon(Icons.arrow_back_ios),
      title: Text(
        'Profile',
        style: TextStyle(color: Colors.black87),
      ),
      centerTitle: true,
    );
  }
}
