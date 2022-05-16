import 'package:carrot_market/components/appbar_prefreed_size.dart';
import 'package:carrot_market/components/bottom_title_icon.dart';
import 'package:carrot_market/components/round_border_text.dart';
import 'package:carrot_market/components/search_text_field.dart';
import 'package:carrot_market/components/store_item.dart';
import 'package:carrot_market/models/recommend_store.dart';
import 'package:carrot_market/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NearMeScreen extends StatelessWidget {
  const NearMeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("내 근처"),
        actions: [
          IconButton(
            onPressed: (() {}),
            icon: Icon(
              CupertinoIcons.pencil,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: (() {}),
            icon: Icon(
              CupertinoIcons.bell,
              color: Colors.black,
            ),
          ),
        ],
        bottom: appBarBottomLine(),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: SearchTextField(),
          ),
          SizedBox(
            height: 66,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: searchKeyword.length,
                itemBuilder: ((context, index) {
                  return Center(
                    child: RoundBorderText(
                        title: searchKeyword[index], position: index),
                  );
                })),
          ),
          Divider(
            color: Colors.grey[100],
            thickness: 10.0,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16,
              top: 30,
            ),
            child: Wrap(
              alignment: WrapAlignment.start,
              spacing: 15.0,
              runSpacing: 30,
              children: [
                BottomTitleIcon(iconData: FontAwesomeIcons.user, title: "구인구직"),
                BottomTitleIcon(
                    iconData: FontAwesomeIcons.edit, title: "과외/클래스"),
                BottomTitleIcon(
                    iconData: FontAwesomeIcons.appleAlt, title: "농수산물"),
                BottomTitleIcon(iconData: FontAwesomeIcons.hotel, title: "부동산"),
                BottomTitleIcon(iconData: FontAwesomeIcons.car, title: "중고차"),
                BottomTitleIcon(
                    iconData: FontAwesomeIcons.chessBishop, title: "전시/행사"),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text(
              "이웃들의 추천 가계",
              style: textTheme().headline2,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 288,
            child: ListView.builder(
              itemBuilder: ((context, index) {
                return Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: StoreItem(
                    recommendStore: recommendStoreList[index],
                  ),
                );
              }),
              scrollDirection: Axis.horizontal,
              itemCount: recommendStoreList.length,
            ),
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
