import 'package:flutter/material.dart';

import '../page.dart';
import '../styles.dart';

class ExplicitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SimplePage(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        H1('Implicit 與 Explicit 動畫'),
        Bullet('Implicit'),
        Bullet('在 Builder Widget 時就產生動畫', level: 1),
        Bullet('可以想成在 build() 中控制 controller', level: 1),
        Bullet('Explicit'),
        Bullet('在 Builder Widget 不會立刻動畫，而是根據事件觸發動畫', level: 1),
        Bullet('可以想成在 build() 外控制 controller', level: 1),
        Divider(),
        Bullet('ImplicitAnimatedWidget - 繼承自 AnimatedWidget'),
        Bullet('TweenBuilder 是一種 ImplicitAnimatedWidget', level: 1),
      ]));
}
