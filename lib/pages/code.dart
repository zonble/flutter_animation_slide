import 'package:flutter/material.dart';

import '../page.dart';
import '../styles.dart';

class Code extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimplePage(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      H1('使用 Flutter SDK 本身的 API 開發動畫'),
      Bullet('1. AnimationController + AnimatedBuilder'),
      Bullet('2. AnimationController + AnimatedWidget'),
      Bullet('3. 其他各種支援動畫的 Widget'),
    ]));
  }
}
