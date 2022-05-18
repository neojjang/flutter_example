import 'package:flutter/material.dart';
import 'package:market_kurly/routes.dart';
import 'package:market_kurly/screens/splash_screen.dart';
import 'package:market_kurly/theme.dart';

void main() {
  runApp(const MarketKurly());
}

class MarketKurly extends StatelessWidget {
  const MarketKurly({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Market Kurly UI",
      initialRoute: SplashScreen.routeName,
      routes: route,
      theme: theme(),
    );
  }
}
