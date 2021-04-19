import 'package:flutter/material.dart';

import '../page.dart';
import '../styles.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimplePage(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      H1('關於'),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              children: [
                Bullet('Flutter GDE | 2019-'),
                Bullet(
                    'Developer Lead at Cerence Taipei (NASDAQ:CRNC) | 2020-'),
                Bullet('iOS Team Lead at KKBOX | 2011-2020'),
                Bullet('KKBOX for macOS, iOS, tvOS, watchOS', level: 1),
                Bullet('KKBOX Kids app. KKTIX app, and so on.', level: 1),
                Bullet('KKBOX OpenAPI SDK - Objective-C, Swift and Dart',
                    level: 1),
                Bullet('其他：Yahoo! 輸入法、無蝦米輸入法 mac 版、OpenVanilla 輸入法…'),
              ],
            ),
          ),
          SizedBox(width: 10),
          ClipOval(
              child: Container(
                  width: 150, child: Image.asset('images/zonble.jpg'))),
        ],
      ),
    ]));
  }
}
