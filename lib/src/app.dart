import 'package:flutter/material.dart';
import 'package:my_app/src/pages/example_page.dart';
import 'package:my_app/src/pages/home_page.dart';
import 'package:my_app/src/pages/image_page.dart';
import 'package:my_app/src/pages/login_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}
