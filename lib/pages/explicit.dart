import 'package:flutter/material.dart';

import '../page.dart';
import '../styles.dart';

class ExplicitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimplePage(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      H1('Explicit 與 Implicit 動畫'),
      Bullet('Explicit: 在 Builder Widget 時就產生動畫'),
      Bullet('Implicit: 在 Builder Widget 不會立刻動畫，而是根據事件觸發動畫'),
      Bullet('Explicit: 可以想成在 build() 中控制 controller'),
      Bullet('Implicit: 可以想成在 build() 外控制 controller'),
      Bullet('ImplicitAnimatedWidget - 繼承自 AnimatedWidget'),
      Bullet('TweenBuilder 是一種 ImplicitAnimatedWidget', level: 1),
    ]));
  }
}
