import 'package:flutter/material.dart';

class SimplePage extends StatelessWidget {
  final Widget child;

  SimplePage({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: child,
      );
}
