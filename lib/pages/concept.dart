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
      Bullet('動畫就是在時間軸中快速改變 Widget 的某些屬性'),
      Bullet('Transform：可以做出旋轉、縮放等動畫', level: 1),
      Bullet('Opacity：可以做出淡入淡出動畫', level: 1),
      Bullet('Align 或 Positioned：可以做出移動動畫', level: 1),
      Bullet('AnimationController：控制時間軸'),
      Bullet('AnimatedBuilder：build 出受到動畫影響的 Widget'),
      Bullet('AnimatedWidget：像是把 AnimatedBuilder 中的邏輯抽出變成 Widget'),
    ]));
  }
}
