import 'package:flutter/material.dart';
import 'package:boxicons_flutter/boxicons_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Use Boxicons Font Icons',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Boxicons Font Icons'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            IconWidget(
              Boxicons.bxBall,
              'bxBall',
            ),
            IconWidget(
              Boxicons.bxlApple,
              'bxlApple',
            ),
            IconWidget(
              Boxicons.bxsAward,
              'bxsAward',
            )
          ],
        ),
      ),
    );
  }
}

class IconWidget extends StatelessWidget {
  IconWidget(this.iconData, this.description);

  final IconData iconData;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10),
          ),
          Icon(
            iconData,
            size: 40,
          ),
          Text(description),
        ],
      ),
    );
  }
}
