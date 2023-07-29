import 'package:flutter/material.dart';
import 'package:meals_app/mainscreen.dart';
import 'package:meals_app/startscreen.dart';

class Food extends StatefulWidget {
  const Food({super.key});

  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {
  var activeScreen = 'start-screen';
  void switchScreen() {
    setState(() {
      activeScreen = "Main-screen";
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'Main-screen') {
      screenWidget = const MainScreen();
    }
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            child: screenWidget,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
