import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../page.dart';
import '../styles.dart';

class AnimatedWidgetPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AnimatedWidgetPageState();
}

class _AnimatedWidgetPageState extends State<AnimatedWidgetPage> {
  GlobalKey<_RotateAnimationState> key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SimplePage(
        child: Column(children: [
      H1('這次我們改用 Animation Widget'),
      Bullet('看起來效果差不多，但用的是另外一套 API'),
      SizedBox(height: 20),
      Container(
        height: 360,
        child: Row(children: [
          Expanded(flex: 1, child: Center(child: RotateAnimation(key: key))),
          Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () => key.currentState.forward(),
                        child: Text('Forward')),
                    SizedBox(height: 4),
                    ElevatedButton(
                        onPressed: () => key.currentState.reverse(),
                        child: Text('Reverse')),
                    SizedBox(height: 4),
                    ElevatedButton(
                        onPressed: () => key.currentState.forwardFrom0(),
                        child: Text('Forward from 0')),
                    SizedBox(height: 4),
                    ElevatedButton(
                        onPressed: () => key.currentState.reverseFrom1(),
                        child: Text('Reverse from 1')),
                    SizedBox(height: 4),
                    ElevatedButton(
                        onPressed: () => key.currentState.repeat(),
                        child: Text('Repeat')),
                    SizedBox(height: 4),
                    ElevatedButton(
                        onPressed: () => key.currentState.repeatAndReverse(),
                        child: Text('Repeat and Reverse')),
                    SizedBox(height: 4),
                    ElevatedButton(
                        onPressed: () => key.currentState.animatedTo25(),
                        child: Text('Animated to 0.25')),
                    SizedBox(height: 4),
                    ElevatedButton(
                        onPressed: () => key.currentState.animatedTo75(),
                        child: Text('Animated to 0.75')),
                  ],
                ),
              ))
        ]),
      )
    ]));
  }
}

class RotateAnimation extends StatefulWidget {
  RotateAnimation({Key key}) : super(key: key);

  @override
  _RotateAnimationState createState() => _RotateAnimationState();
}

class _RotateAnimationState extends State<RotateAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  forward() => _controller.forward();

  forwardFrom0() => _controller.forward(from: 0);

  reverse() => _controller.reverse();

  reverseFrom1() => _controller.reverse(from: 1);

  repeat() => _controller.repeat();

  repeatAndReverse() => _controller.repeat(reverse: true);

  animatedTo25() => _controller.animateTo(0.25, curve: Curves.bounceIn);

  animatedTo75() => _controller.animateTo(0.75, curve: Curves.bounceInOut);

  @override
  Widget build(BuildContext context) => Inner(controller: _controller);
}

class Inner extends AnimatedWidget {
  const Inner({
    Key key,
    @required AnimationController controller,
  }) : super(key: key, listenable: controller);

  Animation<double> get _progress => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Transform.rotate(
            angle: _progress.value * math.pi * 2,
            child: ClipOval(
                child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage('images/cat.jpg'))),
            ))));
  }
}
