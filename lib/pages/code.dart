import 'package:flutter/material.dart';

import '../page.dart';
import '../styles.dart';

class Code extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimplePage(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      H2('使用 Flutter SDK 本身的 API'),
      H1('1. AnimationController + AnimatedBuilder'),
      H1('2. AnimationController + AnimatedWidget'),
      H1('3. 其他各種支援動畫的 Widget'),
    ]));
  }
}
