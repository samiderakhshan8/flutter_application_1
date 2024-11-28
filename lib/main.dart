import 'package:flutter/material.dart';
import 'package:flutter_application_1/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'nastaliq'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: getAppBarr(),
        body: const MainScreenState(),
      ),
    );
  }
}

PreferredSizeWidget getAppBarr() {
  return PreferredSize(
    preferredSize: const Size.fromHeight(50),
    child: AppBar(
      elevation: 5,
      backgroundColor: const Color(0xff1C1F2E),
      title: const Center(
        child: Text(
          'تسلا    الکترونیک',
          style: TextStyle(
              fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    ),
  );
}
