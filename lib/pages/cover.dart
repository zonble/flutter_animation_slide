import 'package:flutter/material.dart';

import '../page.dart';
import '../styles.dart';

class Cover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimplePage(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      H1('在 Flutter 中使用動畫'),
      Spacer(),
      FlutterLogo(),
      Spacer(),
      Bullet('Weizhong Yang a.k.a zonble'),
      Bullet('zonble@gmail.com / https://zonble.net'),
      Bullet('Slide Source Code',
          link: 'https://github.com/zonble/flutter_animation_slide'),
      SizedBox(height: 20),
    ]));
  }
}
