import 'package:flutter/material.dart';
import 'core.dart';

void main() {
  runApp(const MyApp());
}

// Widget mainview = NavigatoerView();
// Widget mainview = HomeView();
Widget mainview = SplashScreens();

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: mainview,
    );
  }
}
