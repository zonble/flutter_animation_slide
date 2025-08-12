import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class H1 extends StatelessWidget {
  final String text;

  const H1(this.text, {super.key});

  @override
  Widget build(BuildContext context) => Semantics(
        header: true,
        child: Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Text(text,
                style: const TextStyle(
                  fontSize: 46,
                  color: Color(0xFF00B4BE),
                  fontWeight: FontWeight.w200,
                  fontFamily: 'Helvetica Neue',
                ))),
      );
}

class H2 extends StatelessWidget {
  final String text;

  const H2(this.text, {super.key});

  @override
  Widget build(BuildContext context) => Semantics(
        header: true,
        child: Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Text(text,
                style: const TextStyle(
                  fontSize: 36,
                  color: Color(0xFF00B4BE),
                  fontWeight: FontWeight.w200,
                  fontFamily: 'Helvetica Neue',
                ))),
      );
}

class Bullet extends StatelessWidget {
  final String text;
  final int level;
  final String? link;

  const Bullet(this.text, {this.level = 0, this.link, super.key});

  @override
  Widget build(BuildContext context) {
    return Semantics(
      header: true,
      child: Container(
          padding: const EdgeInsets.only(bottom: 6),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 12.0 + level * 30, right: 12.0),
                child: const Text('-', style: TextStyle(fontSize: 26)),
              ),
              Flexible(
                child: link != null ? buildLink() : buildText(),
              ),
            ],
          )),
    );
  }

  Widget buildLink() => TextButton(
        onPressed: () => launchUrl(Uri.parse(link!)),
        child: buildText(color: Colors.cyan),
      );

  Widget buildText({Color? color}) => Text(text,
      style: TextStyle(
          fontSize: 26,
          fontFamily: 'Helvetica Neue',
          fontWeight: FontWeight.w300,
          color: color));
}
