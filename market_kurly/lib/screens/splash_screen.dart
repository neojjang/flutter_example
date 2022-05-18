import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:market_kurly/constants.dart';
import 'package:market_kurly/screens/main_screens.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 5,
              child: Center(
                child: Text(
                  "Kurly",
                  style: GoogleFonts.pacifico(
                    fontSize: 28,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(24),
                child: TextButton(
                  onPressed: (() {
                    _completeSplash(context, MainScreens());
                  }),
                  child: Text("Continue"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _completeSplash(BuildContext context, Widget mainScreens) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (BuildContext context) => mainScreens),
    );
  }
}
