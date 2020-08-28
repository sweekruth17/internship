import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'navigation/nav_home.dart';

//package name :blackhammer.rpms1
void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "first stateful widget!",
      home: NavDrawerExample(),
      theme: ThemeData.dark()));
}
