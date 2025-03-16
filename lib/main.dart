import 'package:app_jokenpo/screens/gameScreen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'google'),
      title: 'JOKENPO',
      debugShowCheckedModeBanner: false,
      home: Gamescreen(),
    );
  }
}
