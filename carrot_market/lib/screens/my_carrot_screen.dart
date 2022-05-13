import 'package:carrot_market/components/card_icon_menu.dart';
import 'package:carrot_market/components/my_carrot_header.dart';
import 'package:carrot_market/models/icon_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyCarrotScreen extends StatelessWidget {
  const MyCarrotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("나의 당근"),
        actions: [
          IconButton(
            onPressed: (() {}),
            icon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
          ),
        ],
        bottom: PreferredSize(
          child: Divider(
            thickness: 0.5,
            height: 0.5,
            color: Colors.grey,
          ),
          preferredSize: Size.fromHeight(0.5),
        ),
      ),
      body: ListView(
        children: [
          MyCarrotHeader(),
          SizedBox(
            height: 8.0,
          ),
          CardIconMenu(iconMenulist: iconMenu1),
          SizedBox(
            height: 8.0,
          ),
          CardIconMenu(iconMenulist: iconMenu2),
          SizedBox(
            height: 8.0,
          ),
          CardIconMenu(iconMenulist: iconMenu3),
        ],
      ),
    );
  }
}
