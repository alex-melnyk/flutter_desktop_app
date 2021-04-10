import 'package:flutter/material.dart';
import 'package:flutter_desktop_app/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        primaryColorDark: Colors.black26,
      ),
      darkTheme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}
