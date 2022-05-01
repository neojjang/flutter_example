import 'package:flutter/material.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false, // 디버그 리본 삭제
      home: StorePage(),
    );
  }
}

class StorePage extends StatelessWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                children: <Widget>[
                  Text(
                    'Woman',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    'Kids',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    'Shoes',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    'Bag',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Image.asset(
                'repo/images/bag.jpeg',
                fit: BoxFit.fill,
              ),
              flex: 2,
            ),
            SizedBox(
              height: 2,
            ),
            Expanded(
              child: Image.asset(
                'repo/images/cloth.jpeg',
                fit: BoxFit.cover,
              ),
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
