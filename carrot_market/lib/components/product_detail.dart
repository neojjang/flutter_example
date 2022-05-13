import 'package:carrot_market/models/product.dart';
import 'package:carrot_market/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

class ProductDetail extends StatelessWidget {
  final Product product;

  const ProductDetail({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.title,
            style: textTheme().bodyText1,
          ),
          SizedBox(
            height: 4.0,
          ),
          Text("${product.address} • ${product.publishedAt}"),
          SizedBox(
            height: 4.0,
          ),
          Text(
            "${numberFormat(product.price)}원",
            style: textTheme().headline2,
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Visibility(
                child: _buildIcons(
                  product.commentsCount,
                  CupertinoIcons.chat_bubble_2,
                ),
                visible: product.commentsCount > 0,
              ),
              SizedBox(
                width: 8.0,
              ),
              Visibility(
                child: _buildIcons(product.heartCount, CupertinoIcons.heart),
                visible: product.heartCount > 0,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildIcons(int commentsCount, IconData iconData) {
    return Row(
      children: [
        Icon(
          iconData,
          size: 14.0,
        ),
        SizedBox(
          width: 4.0,
        ),
        Text("${commentsCount}"),
      ],
    );
  }

  String numberFormat(String price) {
    final formatter = NumberFormat("#,###");
    return formatter.format(int.parse(price));
  }
}
