import 'package:flutter/material.dart';

import "./screens/news/news.dart";
import "./screens/news_details/news_details.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        "/": (context) => News(),
        "/news-details": (context) => NewsDetails()
      },
    );
  }
}
