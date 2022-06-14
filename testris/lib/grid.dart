import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:testris/pixel.dart';

class MyGrid extends StatefulWidget {
  final List<int> newPiece;
  final List<List<int>> landedPieces;
  final Color newColor;

  final int numberOfSquares;

  MyGrid(
      {Key? key,
      required this.numberOfSquares,
      required this.landedPieces,
      required this.newPiece,
      required this.newColor})
      : super(key: key);

  @override
  State<MyGrid> createState() => _MyGridState();
}

class _MyGridState extends State<MyGrid> {
  List<Color> pieceColor = [
    Colors.red,
    Colors.yellow,
    Colors.purple,
    Colors.green,
    Colors.blue,
    Colors.brown,
    Colors.pink
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 180,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 10),
          itemBuilder: (BuildContext context, int index) {
            for (var i = 0; i < pieceColor.length; i++) {
              if (widget.landedPieces[i].contains(index)) {
                return MyPixel(
                  color: pieceColor[i],
                  child: Text(
                    index.toString(),
                    style: TextStyle(color: Colors.white),
                  ),
                );
              }
              if (widget.newPiece.contains(index)) {
                return MyPixel(
                  color: widget.newColor,
                  child: Text(
                    index.toString(),
                    style: TextStyle(color: Colors.white),
                  ),
                );
              } else {
                return MyPixel(
                  color: Colors.black,
                  child: Text(
                    index.toString(),
                    style: TextStyle(color: Colors.white),
                  ),
                );
              }
            }
          }),
    );
  }
}
