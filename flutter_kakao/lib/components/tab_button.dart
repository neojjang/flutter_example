import 'package:flutter/material.dart';

class TabButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const TabButton({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {
        print(text);
      }),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          SizedBox(
            height: 5,
          ),
          Text(text),
        ],
      ),
    );
  }
}
