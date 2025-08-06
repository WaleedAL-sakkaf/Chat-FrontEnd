import 'package:flutter/material.dart';
import 'package:login_form/conter.dart';
import 'package:login_form/usersScreen.dart';

import 'Chat.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Chater(),
    );
  }
}
