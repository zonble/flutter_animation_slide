import 'package:flutter/material.dart';

class SimplePage extends StatelessWidget {
  final Widget child;

  SimplePage({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
      child: Padding(
          padding:
              const EdgeInsets.only(top: 10.0, left: 10, right: 10, bottom: 30),
          child: child));
}
