import 'package:flutter/material.dart';
import 'package:flutter_kakao/components/tab_button.dart';
import 'package:flutter_kakao/models/tab.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "더보기",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 10),
        child: GridView.count(
          crossAxisCount: 4,
          children: List.generate(
            tabs.length,
            (index) =>
                TabButton(icon: tabs[index].icon, text: tabs[index].text),
          ),
        ),
      ),
    );
  }
}
