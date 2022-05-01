import 'package:flutter/material.dart';
import 'package:flutter_recipe/screens/recipe_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'PatuaOne'),
      debugShowCheckedModeBanner: false,
      home: const RecipePage(),
    );
  }
}
