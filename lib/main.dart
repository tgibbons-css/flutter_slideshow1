import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final PageController ctrl = PageController();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('SlideShow'),
          ),
          body: PageView (
              controller: ctrl,
              children: [
                Image.asset('images/F-1.JPG'),
                Image.asset('images/F-2.JPG'),
                Image.asset('images/F-3.JPG')
              ]
          )
        ),
      );
  }
}


