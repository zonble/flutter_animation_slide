import 'package:flutter/material.dart';
import 'package:flutter_animations_slide/pages/hero_app.dart';

import '../page.dart';
import '../styles.dart';

class HeroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SimplePage(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        H1('Hero 動畫'),
        Bullet('在頁面之間的過場動畫'),
        SizedBox(height: 10),
        ClipRect(
          child: Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 400, maxHeight: 400),
                child: HeroApp()),
          ),
        ),
      ]));
}
