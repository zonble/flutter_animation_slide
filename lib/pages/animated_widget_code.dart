import 'package:dart_code_viewer/dart_code_viewer.dart';
import 'package:flutter/material.dart';

import '../page.dart';
import '../styles.dart';

class AnimationWidgetCodePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimplePage(
      child: Column(
        children: [
          H1('build() 中，我們建立了一個新的 Class，叫做 Inner'),
          Flexible(
            child: DartCodeViewer.light(r'''
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

  @override
  Widget build(BuildContext context) => Inner(controller: _controller);
}
'''),
          ),
        ],
      ),
    );
  }
}

class AnimationWidgetCodeInnerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimplePage(
      child: Column(
        children: [
          H1('Inner 的實作'),
          Flexible(
            child: DartCodeViewer.light(r'''
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
'''),
          ),
        ],
      ),
    );
  }
}
