import 'package:flutter/material.dart';
import 'package:svgaplayer_flutter/svgaplayer_flutter.dart';

import '../page.dart';
import '../styles.dart';

class SvgaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimplePage(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      H1('SVGA'),
      Bullet('一樣提供 After Effect 的轉換工具'),
      Bullet('流行於對岸直播業界'),
      Spacer(),
      Center(
        child: Wrap(children: [
          Container(
            height: 160,
            width: 200,
            padding: EdgeInsets.only(right: 20),
            child: SVGASimpleImage(
                resUrl:
                    "https://github.com/yyued/SVGA-Samples/blob/master/angel.svga?raw=true"),
          ),
          Container(
            height: 160,
            width: 200,
            padding: EdgeInsets.only(right: 20),
            child: SVGASimpleImage(
                resUrl:
                    "https://github.com/yyued/SVGA-Samples/blob/master/halloween.svga?raw=true"),
          ),
          Container(
            height: 160,
            width: 200,
            padding: EdgeInsets.only(right: 20),
            child: SVGASimpleImage(
                resUrl:
                    "https://github.com/yyued/SVGA-Samples/blob/master/kingset.svga?raw=true"),
          ),
          Container(
            height: 160,
            width: 200,
            padding: EdgeInsets.only(right: 20),
            child: SVGASimpleImage(
                resUrl:
                    "https://github.com/yyued/SVGA-Samples/blob/master/posche.svga?raw=true"),
          ),
          Container(
            height: 160,
            width: 200,
            padding: EdgeInsets.only(right: 20),
            child: SVGASimpleImage(
                resUrl:
                    "https://github.com/yyued/SVGA-Samples/blob/master/rose.svga?raw=true"),
          ),
        ]),
      ),
      Spacer(),
      Text('https://github.com/svga/SVGA-Samples 這頁的載入速度有點慢…'),
      SizedBox(height: 10),
    ]));
  }
}
