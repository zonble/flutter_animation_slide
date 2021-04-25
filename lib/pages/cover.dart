import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:math' as math;

import '../page.dart';
import '../styles.dart';

class Cover extends StatefulWidget {
  @override
  _CoverState createState() => _CoverState();
}

class _CoverState extends State<Cover> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 2000));
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => SimplePage(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        H1('在 Flutter 中製作動畫'),
        Spacer(),
        AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Align(
                  alignment: Alignment(_controller.value * 2 - 1, 1),
                  child: Transform.rotate(
                      angle: _controller.value * math.pi * 2, child: child));
            },
            child: Container(width: 200, height: 200, child: FlutterLogo())),
        Spacer(),
        Bullet('Weizhong Yang a.k.a zonble'),
        Bullet('zonble@gmail.com / https://zonble.net'),
        Row(
          children: [
            SizedBox(width: 30),
            TextButton(
                onPressed: () =>
                    launch('https://zonble.github.io/flutter_animation_slide/'),
                child: Text('Slide Link')),
            VerticalDivider(),
            TextButton(
                onPressed: () =>
                    launch('https://github.com/zonble/flutter_animation_slide'),
                child: Text('Slide Source Code'))
          ],
        ),
        SizedBox(height: 20),
      ]));
}
