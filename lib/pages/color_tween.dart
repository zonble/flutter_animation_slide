import 'package:flutter/material.dart';

import '../page.dart';
import '../styles.dart';

class TweenAnimationWidgetPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TweenAnimationWidgetPageState();
}

class _TweenAnimationWidgetPageState extends State<TweenAnimationWidgetPage> {
  GlobalKey<_TweenAnimationExampleState> key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SimplePage(
        child: Column(children: [
      H1('Tween'),
      Bullet('用來描述動畫中比較複雜的數值變化'),
      Bullet('ColorTween: 描述顏色之間的變化'),
      SizedBox(height: 20),
      Container(
          height: 300,
          child: Row(children: [
            Expanded(
                flex: 1, child: Center(child: TweenAnimationExample(key: key))),
            Expanded(
                flex: 1,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () => key.currentState.toggle(),
                          child: Text('Toggle')),
                    ]))
          ]))
    ]));
  }
}

class TweenAnimationExample extends StatefulWidget {
  TweenAnimationExample({Key key}) : super(key: key);

  @override
  _TweenAnimationExampleState createState() => _TweenAnimationExampleState();
}

class _TweenAnimationExampleState extends State<TweenAnimationExample> {
  var _on = true;

  toggle() => setState(() => _on = !_on);

  @override
  Widget build(BuildContext context) {
    final tween = _on
        ? ColorTween(begin: Colors.red, end: Colors.blue)
        : ColorTween(begin: Colors.blue, end: Colors.red);
    return TweenAnimationBuilder<Color>(
        tween: tween,
        duration: Duration(milliseconds: 500),
        builder: (context, color, child) => Container(color: color));
  }
}
