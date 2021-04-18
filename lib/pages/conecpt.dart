import 'package:flutter/material.dart';

import '../page.dart';
import '../styles.dart';

class Concept extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimplePage(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          H1('基本觀念'),
          Bullet('Flutter 的所有 Widget 都是 View Model'),
          Bullet('在 Flutter 中製作動畫，往往是在時間軸中快速改變某些 Widget 的屬性，然後 redraw'),
          Bullet('改變 Transform，可以做出旋轉、縮放等動畫', level: 1),
          Bullet('改變 Opacity，可以做出淡入淡出動畫', level: 1),
          Bullet('改變 Align 或 Positioned，可以做出移動動畫', level: 1),
          Bullet('AnimationController 控制動畫中時間與數值的對應'),
          Bullet('在 AnimatedBuilder 中 build 出受到動畫影響的 Widget'),
          Bullet('（也可以用不斷 setState() 實作，不過方便起見，只講一種實作方式 ）'),
        ]));
  }
}
