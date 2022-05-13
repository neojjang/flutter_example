import 'package:carrot_market/models/icon_menu.dart';
import 'package:carrot_market/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CardIconMenu extends StatelessWidget {
  final List<IconMenu> iconMenulist;

  const CardIconMenu({Key? key, required this.iconMenulist}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: List.generate(
              iconMenulist.length,
              (index) => _buildRowIconItem(
                  iconMenulist[index].title, iconMenulist[index].iconData)),
        ),
      ),
    );
  }

  Widget _buildRowIconItem(String title, IconData iconData) {
    return Container(
      height: 50,
      child: Row(
        children: [
          Icon(
            iconData,
            size: 17,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            title,
            style: textTheme().subtitle1,
          ),
        ],
      ),
    );
  }
}
