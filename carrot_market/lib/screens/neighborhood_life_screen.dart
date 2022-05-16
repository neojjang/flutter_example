import 'package:carrot_market/components/appbar_prefreed_size.dart';
import 'package:carrot_market/components/life_body.dart';
import 'package:carrot_market/models/neighborhood_life.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:carrot_market/components/life_header.dart';

class NeighborhoodLifeScreen extends StatelessWidget {
  const NeighborhoodLifeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("동네생활"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.search,
            ),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.plus_rectangle_on_rectangle,
            ),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.bell,
            ),
            color: Colors.black,
          ),
        ],
        bottom: appBarBottomLine(),
      ),
      body: ListView(
        children: [
          LifeHeader(),
          ...List.generate(
            neighborhoodLifeList.length,
            (index) => Padding(
              padding: EdgeInsets.only(
                bottom: 8.0,
              ),
              child: LifeBody(
                neighborhoodLife: neighborhoodLifeList[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
