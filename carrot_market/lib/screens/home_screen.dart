import 'package:carrot_market/components/product_detail.dart';
import 'package:carrot_market/components/product_item.dart';
import 'package:carrot_market/models/product.dart';
import 'package:carrot_market/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const [
            Text("좌동"),
            SizedBox(
              width: 4.0,
            ),
            Icon(
              CupertinoIcons.chevron_down,
              size: 15.0,
              color: Colors.black,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: (() {}),
            icon: Icon(
              CupertinoIcons.search,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: (() {}),
            icon: Icon(
              CupertinoIcons.list_dash,
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
        bottom: PreferredSize(
          child: Divider(
            thickness: 0.5,
            height: 0.5,
            color: Colors.grey,
          ),
          preferredSize: Size.fromHeight(0.5),
        ),
      ),
      body: ListView.separated(
        itemBuilder: ((context, index) {
          return ProductItem(product: productList[index]);
        }),
        separatorBuilder: (context, index) => Divider(
          height: 0,
          indent: 16,
          endIndent: 16,
          color: Colors.grey,
        ),
        itemCount: productList.length,
      ),
    );
  }
}
