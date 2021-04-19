import 'package:flutter/material.dart';

import '../page.dart';
import '../styles.dart';

class Code extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimplePage(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      H1('用 Flutter SDK 本身的 API'),
      Bullet('個人歸納以下幾種方式'),
      Bullet('1. AnimationController + AnimatedBuilder', level: 1),
      Bullet('2. AnimationController + AnimatedWidget', level: 1),
      Bullet('3. 其他各種支援動畫的 Widget', level: 1),
    ]));
  }
}
