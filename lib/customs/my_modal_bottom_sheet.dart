import 'package:flutter/material.dart';

class MyModalBottomSheet extends StatefulWidget {
  @override
  _MyModalBottomSheetState createState() => _MyModalBottomSheetState();
}

class _MyModalBottomSheetState extends State<MyModalBottomSheet> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: Icon(Icons.open_in_new),
              onPressed: showBottomSheet,
            ),
          ],
        ),
        body: Container(),
      );

  void showBottomSheet() => showModalBottomSheet(
        enableDrag: true,
        isDismissible: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(64),
            topRight: Radius.circular(64),
          ),
        ),
        barrierColor: Colors.blue.withOpacity(0.2),
        context: context,
        builder: (context) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Icon(Icons.share),
              title: Text('Share'),
              onTap: () {
                Navigator.of(context).pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.link),
              title: Text('Copy link'),
              onTap: () => {},
            ),
          ],
        ),
      );
}
