import 'package:flutter/material.dart';

import '../page.dart';
import '../styles.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SimplePage(
          child: Column(
        children: [
          H1('關於'),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 2,
                  child: SingleChildScrollView(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        Bullet('Flutter GDE | 2019-'),
                        Bullet(
                            'Developer Lead at Cerence Taipei (NASDAQ:CRNC) | 2020-'),
                        Bullet('Cerence 2-Wheeler Mobility Platform', level: 1),
                        Bullet('Cerence Building Mobility Platform', level: 1),
                        Bullet('iOS Team Lead at KKBOX | 2011-2020'),
                        Bullet('KKBOX for macOS, iOS, tvOS, watchOS', level: 1),
                        Bullet('KKBOX Kids app. KKTIX app, and so on.',
                            level: 1),
                        Bullet(
                            'KKBOX OpenAPI SDK - Objective-C, Swift and Dart',
                            level: 1),
                        Bullet('其他：Yahoo! 輸入法 (Windows and macOS)、無蝦米輸入法 macOS 版、OpenVanilla 輸入法…'),
                      ]))),
              Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      image: DecorationImage(
                          image: AssetImage('images/zonble.jpg')))),
            ],
          ),
        ],
      ));
}
