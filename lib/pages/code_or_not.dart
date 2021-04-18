import 'package:flutter/material.dart';

import '../page.dart';
import '../styles.dart';

class CodeOrNot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimplePage(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      H2('你有三種選擇：'),
      H1('1. 寫比較少的 Code'),
      H1('2. 寫比較多的 Code'),
      H1('3. 混合以上兩種方式'),
    ]));
  }
}
