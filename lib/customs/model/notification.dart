import 'package:meta/meta.dart';

class MyNotification{
  String title;
  bool value;

  MyNotification({
    @required this.title,
    this.value = false,
  });
}
