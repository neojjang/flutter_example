import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        cursorColor: Colors.grey,
        decoration: InputDecoration(
          disabledBorder: _buildOutLineInputBorder(),
          enabledBorder: _buildOutLineInputBorder(),
          focusedBorder: _buildOutLineInputBorder(),
          filled: true,
          fillColor: Colors.grey[200],
          prefixIcon: Icon(
            CupertinoIcons.search,
            color: Colors.grey,
          ),
          contentPadding:
              EdgeInsets.only(left: 0, bottom: 15, top: 15, right: 0),
          hintText: "좌동 주변 가게를 찾아 보세요.",
          hintStyle: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  OutlineInputBorder _buildOutLineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(
        width: 0.5,
        color: Color(0xFFd4D5DD),
      ),
      borderRadius: BorderRadius.circular(8.0),
    );
  }
}
