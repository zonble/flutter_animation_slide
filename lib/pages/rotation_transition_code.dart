import 'package:dart_code_viewer/dart_code_viewer.dart';
import 'package:flutter/material.dart';

import '../page.dart';
import '../styles.dart';

class RotationTransitionCodePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimplePage(
      child: Column(
        children: [
          H1('改用 RotationTransition 實作'),
          Flexible(
            child: DartCodeViewer.light(r'''
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RotationTransition(
          turns: _controller,
          child: ClipOval(
              child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(100)),
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage('images/cat.jpg'))),
          ))),
    );
'''),
          ),
        ],
      ),
    );
  }
}
