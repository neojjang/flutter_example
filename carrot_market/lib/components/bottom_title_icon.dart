import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottomTitleIcon extends StatelessWidget {
  final IconData iconData;
  final String title;

  const BottomTitleIcon({
    Key? key,
    required this.iconData,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      child: Column(
        children: [
          Icon(
            iconData,
            size: 30,
          ),
          Padding(
            padding: EdgeInsets.only(top: 8),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
