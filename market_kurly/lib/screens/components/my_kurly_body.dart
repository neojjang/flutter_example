import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:market_kurly/models/text_menu.dart';
import 'package:market_kurly/screens/components/my_kurly_header.dart';
import 'package:market_kurly/screens/components/text_menu_card.dart';

class MyKurlyBody extends StatelessWidget {
  const MyKurlyBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyKurlyHeader(),
        buildPaddingTextMenuCard("비회원 주문 조회", () {}),
        SizedBox(
          height: 330,
          child: ListView.separated(
            physics:
                ClampingScrollPhysics(), // scroll disable => NeverScrollableScrollPhysics()
            // primary: false, // scroll disable
            itemBuilder: ((context, index) => SizedBox(
                  height: 55,
                  child: TextMenuCard(
                    title: textMenuList[index].text,
                    icon: textMenuList[index].icon,
                    press: () {},
                  ),
                )),
            separatorBuilder: (context, index) => Divider(
              height: 0,
            ),
            itemCount: textMenuList.length,
          ),
        ),
        buildPaddingTextMenuCard("컬리 소개", () {}),
      ],
    );
  }

  buildPaddingTextMenuCard(String text, GestureTapCallback press) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 12.0,
      ),
      child: SizedBox(
        height: 55,
        child: TextMenuCard(
          title: text,
          icon: "assets/icons/right-arrow.svg",
          press: press,
          textColor: Colors.black,
        ),
      ),
    );
  }
}
