import 'package:flutter/material.dart';
import 'package:flutter_shoppingcart/components/shoppingcart_detail.dart';
import 'package:flutter_shoppingcart/components/shoppingcart_header.dart';
import 'package:flutter_shoppingcart/constants.dart';
import 'package:flutter_shoppingcart/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme(),
      home: ShoppingCartPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildShoppingCartAppBar(),
      body: Column(
        children: [
          ShoppingCartHeader(),
          ShoppingCartDetail(),
        ],
      ),
    );
  }
}

AppBar _buildShoppingCartAppBar() {
  return AppBar(
    leading: IconButton(
      onPressed: (() {}),
      icon: Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
    ),
    actions: [
      IconButton(
        onPressed: (() {}),
        icon: Icon(
          Icons.shopping_cart,
          color: Colors.black,
        ),
      ),
      SizedBox(
        width: 16,
      )
    ],
    elevation: 0.0,
  );
}
