import 'dart:math';

import 'package:flutter/material.dart';
import 'pages/about.dart';
import 'pages/animated_widget.dart';
import 'pages/animated_widget_code.dart';
import 'pages/animated_widgets.dart';
import 'pages/animation_all.dart';
import 'pages/animation_code.dart';
import 'pages/animation_opacity.dart';
import 'pages/animation_rotate.dart';
import 'pages/animation_scale.dart';
import 'pages/code.dart';
import 'pages/code_less.dart';
import 'pages/code_or_not.dart';
import 'pages/color_tween.dart';
import 'pages/concept.dart';
import 'pages/cover.dart';
import 'pages/explicit.dart';
import 'pages/gif.dart';
import 'pages/hero.dart';
import 'pages/lottie.dart';
import 'pages/recap.dart';
import 'pages/rive.dart';
import 'pages/rotation_transition_code.dart';
import 'pages/rotation_transition_page.dart';
import 'pages/svga.dart';
import 'pages/webp.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animations',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Animations'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController _pageController = PageController();
  GlobalKey<_PageNumberState> _key = GlobalKey();
  int _page = 1;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      var currentPage = _pageController.page?.toInt() ?? 0;
      currentPage += 1;
      _page = currentPage;
      _key.currentState?.setPage(_page);
    });
  }

  void nextPage() {
    if (!_pageController.hasClients) return;
    var page = ((_pageController.page ?? 0) + 1).toInt();
    _pageController.animateToPage(page,
        duration: const Duration(milliseconds: 250), curve: Curves.easeInCubic);
  }

  void previousPage() {
    if (!_pageController.hasClients) return;
    var page = max(0, ((_pageController.page ?? 0) - 1).toInt());
    _pageController.animateToPage(page,
        duration: const Duration(milliseconds: 250), curve: Curves.easeInCubic);
  }

  @override
  Widget build(BuildContext context) {
    var scale = () {
      final mediaWidth = MediaQuery.of(context).size.width;
      final mediaHeight = MediaQuery.of(context).size.height;
      if (mediaHeight > mediaWidth) return mediaWidth / 800;
      return mediaHeight / 640;
    }();
    return Scaffold(
        body: Center(
            child: Transform.scale(
                scale: scale,
                child: Container(
                    height: 640,
                    width: 800,
                    child: GestureDetector(
                        onTap: nextPage,
                        child: Stack(
                          children: <Widget>[
                            PageView(
                              controller: _pageController,
                              children: <Widget>[
                                Cover(),
                                About(),
                                CodeOrNot(),
                                CodeLess(),
                                Gif(),
                                Webp(),
                                LottiePage(),
                                SvgaPage(),
                                RivePage(),
                                Code(),
                                Concept(),
                                ScaleAnimationPage(),
                                AnimationCodeControllerPage(),
                                AnimationCodeBuilderPage(),
                                AnimationCodeControllerMethodsPage(),
                                RotateAnimationPage(),
                                OpacityAnimationPage(),
                                AllAnimationPage(),
                                AnimatedWidgetPage(),
                                AnimationWidgetCodePage(),
                                AnimationWidgetCodeInnerPage(),
                                AnimatedWidgets(),
                                RotationTransitionPage(),
                                RotationTransitionCodePage(),
                                TweenAnimationWidgetPage(),
                                ExplicitPage(),
                                HeroPage(),
                                Recap(),
                              ],
                            ),
                            SafeArea(
                                child: Center(
                                    child: Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            IconButton(
                                                icon: const Icon(Icons.arrow_left,
                                                    color: Colors.grey),
                                                onPressed: previousPage),
                                            PageNumber(key: _key, page: _page),
                                            IconButton(
                                                icon: const Icon(Icons.arrow_right,
                                                    color: Colors.grey),
                                                onPressed: nextPage),
                                          ],
                                        ))))
                          ],
                        ))))));
  }
}

class PageNumber extends StatefulWidget {
  const PageNumber({
    super.key,
    required this.page,
  }) : initialPage = page;

  final int initialPage;
  final int page;

  @override
  _PageNumberState createState() => _PageNumberState();
}

class _PageNumberState extends State<PageNumber> {
  int _page;

  @override
  void initState() {
    super.initState();
    _page = widget.initialPage;
  }

  void setPage(int pageIndex) {
    setState(() => _page = pageIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        child: Center(
            child: Text(
          'Page: $_page',
          style: const TextStyle(color: Colors.grey),
        )));
  }
}
