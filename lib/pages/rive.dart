import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';

import '../page.dart';
import '../styles.dart';

class RivePage extends StatefulWidget {
  @override
  _RivePageState createState() => _RivePageState();
}

class _RivePageState extends State<RivePage> {
  void _togglePlay() {
    if (_controller == null) return;
    setState(() => _controller?.isActive = !(_controller?.isActive ?? false));
  }

  /// Tracks if the animation is playing by whether controller is running.
  bool get isPlaying => _controller?.isActive ?? false;

  Artboard _riveArtboard;
  RiveAnimationController _controller;

  @override
  void initState() {
    super.initState();
    rootBundle.load('assets/off_road_car.riv').then(
      (data) async {
        final file = RiveFile.import(data);
        final artboard = file.mainArtboard;
        _controller = SimpleAnimation('idle');
        artboard.addController(_controller);
        setState(() => _riveArtboard = artboard);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SimplePage(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      H1('Rive'),
      Bullet('提供線上網頁版本的動畫編輯工具'),
      Bullet('有較多的 API 可以控制動畫行為'),
      Container(
          height: 300,
          width: 300,
          child: _riveArtboard == null
              ? const SizedBox()
              : Rive(artboard: _riveArtboard)),
      IconButton(
          icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
          onPressed: _togglePlay),
      Text('素材來源 https://github.com/rive-app/rive-flutter/tree/master/example'),
      SizedBox(height: 10),
    ]));
  }
}
