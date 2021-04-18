import 'package:flutter/material.dart';

import '../page.dart';
import '../styles.dart';

class Gif extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimplePage(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      H1('GIF Files'),
      Wrap(
        children: [
          Container(
            width: 200,
            height: 200,
            padding: EdgeInsets.all(10),
            child: Image.asset('images/a503-239x200-logo.gif'),
          ),
          Container(
            width: 200,
            height: 200,
            child: Image.asset('images/a298-logo.gif'),
          ),
          Container(
            width: 200,
            height: 200,
            padding: EdgeInsets.all(10),
            child: Image.asset('images/a578-239x200-logo.gif'),
          ),
          Container(
            width: 200,
            height: 200,
            padding: EdgeInsets.all(10),
            child: Image.asset('images/a361-239x200-logo.gif'),
          ),
          Container(
            width: 200,
            height: 200,
            padding: EdgeInsets.all(10),
            child: Image.asset('images/a565-239x200-logo.gif'),
          ),
          Container(
            width: 200,
            height: 200,
            padding: EdgeInsets.all(10),
            child: Image.asset('images/a317-239x200-logo.gif'),
          ),
        ],
      ),
      Text('https://borrowers.pm330.tw'),
      SizedBox(height: 10),
      Text('當 Flutter 遇到地下金融…'),
    ]));
  }
}
