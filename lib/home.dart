import 'package:flutter/material.dart';

import 'customs/my_bottom_sheet.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('hej')),
      bottomSheet: MyBottomSheet(),
    );
  }
}


