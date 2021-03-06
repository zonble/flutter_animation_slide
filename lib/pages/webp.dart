import 'package:flutter/material.dart';

import '../page.dart';
import '../styles.dart';

class Webp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SimplePage(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      H1('WebP Files'),
      Image.asset('images/animated-webp-supported.webp'),
      SizedBox(height: 4),
      Text('https://mathiasbynens.be/demo/animated-webp'),
    ]));
}
