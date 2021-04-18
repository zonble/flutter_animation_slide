import 'package:flutter/material.dart';

import '../page.dart';
import '../styles.dart';

class OpacityAnimationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _OpacityAnimationPageState();
}

class _OpacityAnimationPageState extends State<OpacityAnimationPage> {
  GlobalKey<_OpacityAnimationState> key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SimplePage(
        child: Column(children: [
      H1('透明度動畫'),
      Bullet('只用 Animation Controller 與 Animation Builder'),
      SizedBox(height: 20),
      Container(
        height: 360,
        child: Row(children: [
          Expanded(flex: 1, child: Center(child: OpacityAnimation(key: key))),
          Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () => key.currentState.forward(),
                      child: Text('Forward')),
                  SizedBox(height: 10),
                  ElevatedButton(
                      onPressed: () => key.currentState.reverse(),
                      child: Text('Reverse')),
                  SizedBox(height: 10),
                  ElevatedButton(
                      onPressed: () => key.currentState.forwardFrom0(),
                      child: Text('Forward from 0')),
                  SizedBox(height: 10),
                  ElevatedButton(
                      onPressed: () => key.currentState.reverseFrom1(),
                      child: Text('Reverse from 1')),
                  SizedBox(height: 10),
                  ElevatedButton(
                      onPressed: () => key.currentState.repeat(),
                      child: Text('Repeat')),
                  SizedBox(height: 10),
                  ElevatedButton(
                      onPressed: () => key.currentState.repeatAndReverse(),
                      child: Text('Repeat and Reverse')),
                  SizedBox(height: 10),
                  ElevatedButton(
                      onPressed: () => key.currentState.animatedTo25(),
                      child: Text('Animated to 0.25')),
                  SizedBox(height: 10),
                  ElevatedButton(
                      onPressed: () => key.currentState.animatedTo75(),
                      child: Text('Animated to 0.75')),
                ],
              ))
        ]),
      )
    ]));
  }
}

class OpacityAnimation extends StatefulWidget {
  OpacityAnimation({Key key}) : super(key: key);

  @override
  _OpacityAnimationState createState() => _OpacityAnimationState();
}

class _OpacityAnimationState extends State<OpacityAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 500), value: 0.5);
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
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        builder: (context, child) =>
            Center(child: Opacity(opacity: _controller.value, child: child)),
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
}
