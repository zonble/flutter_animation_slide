import 'package:flutter/material.dart';

import '../page.dart';
import '../styles.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimplePage(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      H1('關於'),
      Bullet('Flutter GDE | 2019-'),
      Bullet('Developer Lead at Cerence Taipei (NASDAQ:CRNC) | 2020-'),
      Bullet('稍晚會 demo 我在 Cerence 做什麼', level: 1),
      Bullet('iOS Team Lead at KKBOX | 2011-2020'),
      Bullet('KKBOX for macOS, iOS, tvOS, watchOS', level: 1),
      Bullet('KKBOX Kids app. KKTIX app, and so on.', level: 1),
      Bullet('KKBOX OpenAPI SDK - Objective-C, Swift and Dart', level: 1),
      Bullet('其他：Yahoo! 輸入法、無蝦米輸入法 mac 版、OpenVanilla 輸入法…'),
    ]));
  }
}
