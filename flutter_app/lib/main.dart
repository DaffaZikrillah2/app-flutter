// ignore_for_file: unused_import

import 'dart:collection';
import 'package:flutter_app/Project/home.dart';
import 'package:flutter_app/latihan.login.dart';
import 'package:flutter_app/pricing.dart';
import 'login.dart';

import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'btmnavigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageUts(),
    );
  }
}
