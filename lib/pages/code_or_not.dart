import 'package:flutter/material.dart';

import '../page.dart';
import '../styles.dart';

class CodeOrNot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimplePage(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      H2('製作動畫的選擇：'),
      H1('1. 播放動畫檔案'),
      H1('2. 操作 Widget'),
      H1('3. 混合以上兩種方式'),
    ]));
  }
}
