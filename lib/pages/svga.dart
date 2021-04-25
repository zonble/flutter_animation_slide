import 'package:flutter/material.dart';
import 'package:svgaplayer_flutter/svgaplayer_flutter.dart';

import '../page.dart';
import '../styles.dart';

class SvgaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SimplePage(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        H1('SVGA'),
        Bullet('一樣提供 After Effect 的轉換工具'),
        Bullet('流行於對岸直播業界'),
        Bullet('缺點：不支援 Flutter Web'),
        Spacer(),
        Center(
          child: Wrap(children: [
            Container(
              height: 160,
              width: 200,
              padding: EdgeInsets.only(right: 20),
              child: SVGASimpleImage(assetsName: 'assets/angel.svga'),
            ),
            Container(
              height: 160,
              width: 200,
              padding: EdgeInsets.only(right: 20),
              child: SVGASimpleImage(assetsName: 'assets/halloween.svga'),
            ),
            Container(
              height: 160,
              width: 200,
              padding: EdgeInsets.only(right: 20),
              child: SVGASimpleImage(assetsName: 'assets/kingset.svga'),
            ),
            Container(
              height: 160,
              width: 200,
              padding: EdgeInsets.only(right: 20),
              child: SVGASimpleImage(assetsName: 'assets/posche.svga'),
            ),
            Container(
              height: 160,
              width: 200,
              padding: EdgeInsets.only(right: 20),
              child: SVGASimpleImage(assetsName: 'assets/rose.svga'),
            ),
          ]),
        ),
        Spacer(),
        Text('素材來源 https://github.com/svga/SVGA-Samples，在 Flutter Web 看不到本頁效果'),
        SizedBox(height: 4),
      ]));
}
