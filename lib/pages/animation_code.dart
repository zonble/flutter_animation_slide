import 'package:dart_code_viewer/dart_code_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animations_slide/page.dart';

import '../styles.dart';

class AnimationCodeControllerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimplePage(
      child: Column(
        children: [
          H1('先建立 Animation Controller'),
          Flexible(
            child: DartCodeViewer.light(r'''
class _ScaleAnimationState extends State<ScaleAnimation>
            with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
            _controller =
                AnimationController(vsync: this, duration: Duration(milliseconds: 200));
            super.initState();
  }

  @override
  void dispose() {
            _controller.dispose();
            super.dispose();
  }
}
'''),
          ),
        ],
      ),
    );
  }
}

class AnimationCodeBuilderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimplePage(
      child: Column(
        children: [
          H1('使用 AnimatedBuilder'),
          Flexible(
            child: DartCodeViewer.light(r'''
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        builder: (context, child) => Center(
            child: Transform.scale(scale: _controller.value + 1, child: child)),
        child: ClipOval(
            child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(100)),
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage('images/cat.jpg'))),
        )));
  }
'''),
          ),
        ],
      ),
    );
  }
}

class AnimationCodeControllerMethodsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimplePage(
      child: Column(
        children: [
          H1('操作 Animation Controller'),
          Flexible(
            child: DartCodeViewer.light(r'''
  forward() => _controller.forward();

  forwardFrom0() => _controller.forward(from: 0);

  reverse() => _controller.reverse();

  reverseFrom1() => _controller.reverse(from: 1);

  repeat() => _controller.repeat();

  repeatAndReverse() => _controller.repeat(reverse: true);

  animatedTo25() => _controller.animateTo(0.25, curve: Curves.bounceIn);

  animatedTo75() => _controller.animateTo(0.75, curve: Curves.bounceInOut);
'''),
          ),
        ],
      ),
    );
  }
}
