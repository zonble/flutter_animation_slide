import 'package:flutter/material.dart';

class SimplePage extends StatelessWidget {
  final Widget child;

  SimplePage({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
      child: Padding(padding: const EdgeInsets.all(30.0), child: child));
}
