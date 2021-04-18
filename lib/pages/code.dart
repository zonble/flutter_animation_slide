import 'package:flutter/material.dart';

import '../page.dart';
import '../styles.dart';

class Code extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimplePage(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      H1('用 Code 寫動畫'),
      H2('基本組合'),
      Bullet('主角'),
      Bullet('AnimationController',
          level: 1,
          link:
              'https://api.flutter.dev/flutter/animation/AnimationController-class.html'),
      Bullet('AnimatedBuilder',
          level: 1,
          link:
              'https://api.flutter.dev/flutter/widgets/AnimatedBuilder-class.html'),
      Bullet('配角'),
      Bullet('TickerProvider、Curve、Tween…等等', level: 1),
      H2('內建各種支援動畫的 Widget'),
    ]));
  }
}
