import 'package:flutter/material.dart';

import '../page.dart';
import '../styles.dart';

class CodeLess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimplePage(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      H1('播放動畫檔案'),
      H2('內建的 Image Widget'),
      Bullet('GIF Images', link: 'https://en.wikipedia.org/wiki/GIF'),
      Bullet('WebP Images', link: 'https://en.wikipedia.org/wiki/WebP'),
      H2('第三方元件'),
      Bullet('Lottie - by Airbnb | https://airbnb.design/lottie',
          link: 'https://airbnb.design/lottie/'),
      Bullet('SVGA - by JOYY | https://svga.io', link: 'https://svga.io/'),
      Bullet('RIVE | https://rive.app', link: 'https://rive.app'),
    ]));
  }
}
