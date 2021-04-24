import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../page.dart';
import '../styles.dart';

class Cover extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SimplePage(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        H1('在 Flutter 中製作動畫'),
        Spacer(),
        FlutterLogo(),
        Spacer(),
        Bullet('Weizhong Yang a.k.a zonble'),
        Bullet('zonble@gmail.com / https://zonble.net'),
        Row(
          children: [
            TextButton(
                onPressed: () =>
                    launch('https://zonble.github.io/flutter_animation_slide/'),
                child: Text('Slide Link')),
            TextButton(
                onPressed: () =>
                    launch('https://github.com/zonble/flutter_animation_slide'),
                child: Text('Slide Source Code'))
          ],
        ),
        SizedBox(height: 20),
      ]));
}
