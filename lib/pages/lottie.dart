import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../page.dart';
import '../styles.dart';

class LottiePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimplePage(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      H1('Lottie'),
      Bullet('將 After Effect 轉成 App 可用的動畫'),
      Spacer(),
      Wrap(children: [
        Container(
          height: 200,
          padding: EdgeInsets.only(right: 20),
          child: Lottie.network(
              'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/LottieLogo1.json'),
        ),
        Container(
          height: 200,
          padding: EdgeInsets.only(right: 20),
          child: Lottie.network(
              'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/LottieLogo2.json'),
        )
      ]),
      Spacer(),
      // Wrap(children: [
      //   Container(
      //     height: 200,
      //     child: Lottie.network(
      //         'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json'),
      //   ),
      //   Container(
      //     height: 200,
      //     child: Lottie.network(
      //         'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/B.json'),
      //   ),
      //   Container(
      //     height: 200,
      //     child: Lottie.network(
      //         'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/C.json'),
      //   ),
      //   Container(
      //     height: 200,
      //     child: Lottie.network(
      //         'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/D.json'),
      //   )
      // ]),
      // Spacer(),
      Text('https://github.com/xvrh/lottie-flutter/tree/master/example/assets'),
      SizedBox(height: 10),
    ]));
  }
}
