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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controller = ScrollController();
  final double itemSize = 200.0;

  @override
  void initState() {
    // TODO: implement initState
    controller.addListener(onListenerController);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.removeListener(onListenerController);
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Application list'),
        centerTitle: true,
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return Stack(
      children: [
        _listView(),
        Container(
          height: 180,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white,
                Colors.transparent,
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _listView() {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
          itemCount: 20,
          controller: controller,
          itemBuilder: (context, index) {
            print('index=${index}');
            print('scrollController offset=${controller.offset}');
            final itemOffset = index * itemSize;
            final difference = controller.offset - itemOffset;
            print('difference=${difference}');
            final percent = 1 - difference / (itemSize / 2);
            print('percent=${percent}');
            double opacity = percent;
            double scale = percent;
            if (opacity < 0.0) opacity = 0.0;
            if (opacity > 1.0) opacity = 1.0;
            if (scale < 0.0) scale = 0.0;
            if (scale > 1.0) scale = 1.0;

            return Opacity(
              opacity: opacity,
              child: Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()..scale(scale, 1.0),
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  height: itemSize,
                  margin: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black87,
                        blurRadius: 1,
                        spreadRadius: 2,
                      )
                    ],
                  ),
                  child: Text(
                    '${index}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }

  void onListenerController() {
    setState(() {});
  }
}
