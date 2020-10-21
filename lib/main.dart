import 'package:flutter/material.dart';
import 'package:october_2020_practise_7/customs/my_modal_bottom_sheet.dart';
import 'package:october_2020_practise_7/home.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyModalBottomSheet(),
    );
  }
}
