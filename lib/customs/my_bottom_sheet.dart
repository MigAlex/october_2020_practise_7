import 'package:flutter/material.dart';

class MyBottomSheet extends StatelessWidget {
  final String title;
  final VoidCallback onClickedYes;
  final VoidCallback onClickedNo;

  const MyBottomSheet(
      {Key key,
      @required this.title,
      @required this.onClickedYes,
      @required this.onClickedNo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(onPressed: onClickedNo, child: Text('No')),
                RaisedButton(onPressed: onClickedYes, child: Text('Yes')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
