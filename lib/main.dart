import 'package:animated_drawer/screens/drawer_Screen.dart';
import 'package:animated_drawer/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: Stack(
            children: const [
              DrawerScreen(),
              Home(),
            ],
          ),
        ));
  }
}
