import 'package:flutter/material.dart';

import 'customs/my_bottom_sheet.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(child: Text('hej')),
      bottomSheet: MyBottomSheet(
        title: 'Heya',
        onClickedNo: () {},
        onClickedYes: () {},
      ),
    );
  }
}
