import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeroApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        home: HeroList(),
        title: 'Hero Animation Example',
      );
}

class HeroList extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(title: Text('Hero Animation Example')),
      body: Scrollbar(
        child: ListView.builder(
            itemBuilder: (context, index) {
              var title = 'Cat ${index + 1}';
              return ListTile(
                  onTap: () {
                    var route = CupertinoPageRoute(
                        builder: (context) => HeroInner(tag: title));
                    Navigator.of(context).push(route);
                  },
                  title: Row(children: [
                    Hero(
                      tag: title,
                      child: ClipOval(
                          child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('images/cat.jpg'))),
                      )),
                    ),
                    SizedBox(width: 20),
                    Text(title),
                  ]));
            },
            itemCount: 10),
      ));
}

class HeroInner extends StatelessWidget {
  final String tag;

  HeroInner({Key key, this.tag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(children: [
          Hero(
            tag: this.tag,
            child: Image.asset('images/cat.jpg'),
          ),
          SizedBox(height: 20),
          Text('This is a cat'),
        ])),
        appBar: AppBar(title: Text(this.tag)));
  }
}
