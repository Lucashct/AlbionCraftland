import 'package:flutter/material.dart';
import 'viewes/home_page.dart';

void main() {
  runApp(MaterialApp(
    home: MyHomePage(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primaryColor: Colors.redAccent),
  ));
}
