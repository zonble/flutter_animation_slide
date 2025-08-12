import 'package:flutter/material.dart';
import 'package:flutter_animations_slide/widgets/code_viewer.dart';

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
            child: CodeViewer.light(r'''
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
