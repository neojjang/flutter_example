import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_recipe/components/recipe_list_item.dart';
import 'package:flutter_recipe/components/recipe_menu.dart';
import 'package:flutter_recipe/components/recipe_title.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildRecipeAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: <Widget>[
            RecipeTitle(),
            RecipeMenu(),
            RecipeListItem(imageName: 'coffee', title: 'Made Coffee'),
            RecipeListItem(imageName: 'burger', title: 'Made Burger'),
            RecipeListItem(imageName: 'pizza', title: 'Made Pizza'),
          ],
        ),
      ),
    );
  }

  AppBar _buildRecipeAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1.0, // 하단 그림자 효과
      actions: [
        ElevatedButton(
          onPressed: () {},
          child: Icon(
            Icons.search,
            color: Colors.black,
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Icon(
          CupertinoIcons.heart,
          color: Colors.redAccent,
        ),
        SizedBox(
          width: 15,
        )
      ],
    );
  }
}
