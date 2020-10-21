import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _myAnim;
  bool isAnim = true;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    _myAnim = Tween<double>(begin: 1.0, end: 3.0).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.easeIn))
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        StartAnimButton(
            controller: _animationController, icon: Icon(Icons.dangerous))
      ]),
      body: Center(
        child: Container(),
      ),
    );
  }
}

class StartAnimButton extends StatelessWidget {
  final AnimationController controller;
  final Icon icon;

  const StartAnimButton({Key key, this.controller, this.icon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: icon,
        onPressed: () {
          controller.forward();
        });
  }
}
