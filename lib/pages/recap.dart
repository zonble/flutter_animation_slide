import 'package:flutter/material.dart';

import '../page.dart';
import '../styles.dart';

class Recap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimplePage(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          H1('Recap'),
          Bullet('Flutter 支援播放多種動畫檔案'),
          Bullet('大概有三種方式使用 Flutter SDK 的 API 製作動畫'),
          Bullet('AnimationController + AnimatedBuilder', level: 1),
          Bullet('AnimationController + AnimatedWidget', level: 1),
          Bullet('其他支援動畫的 Widget', level: 1),
        ]));
  }
}