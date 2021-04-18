import 'package:flutter/material.dart';

import '../page.dart';
import '../styles.dart';

class AnimatedWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimplePage(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      H1('Flutter 中支援動畫的 Widget'),
      Bullet('官方列出的 Widget',
          link: 'https://flutter.dev/docs/development/ui/widgets/animation'),
      Bullet('舉一些範例'),
      Bullet('AnimatedOpacity',
          link:
              'https://api.flutter.dev/flutter/widgets/AnimatedOpacity-class.html',
          level: 1),
      Bullet('AnimatedCrossFade',
          link:
              'https://api.flutter.dev/flutter/widgets/AnimatedCrossFade-class.html',
          level: 1),
      Bullet('AnimatedContainer',
          link:
              'https://api.flutter.dev/flutter/widgets/AnimatedContainer-class.html',
          level: 1),
      Bullet('ScaleTransition',
          link:
              'https://api.flutter.dev/flutter/widgets/ScaleTransition-class.html',
          level: 1),
      Bullet('SizeTransition',
          link:
              'https://api.flutter.dev/flutter/widgets/SizeTransition-class.html',
          level: 1),
      Bullet('RotationTransition',
          link:
              'https://api.flutter.dev/flutter/widgets/RotationTransition-class.html',
          level: 1),
      Bullet('還有很多…'),
    ]));
  }
}
