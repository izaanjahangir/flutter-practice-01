import 'package:cscsPractice/components/header/header.dart';
import 'package:flutter/material.dart';

class NewsDetails extends StatelessWidget {
  final Map newsData;

  NewsDetails({this.newsData});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Header(
                showBackArrow: true,
                shouldHaveBackground: true,
                showTitle: true,
                title: "News",
              ),
              Image.asset(
                newsData['image'],
                fit: BoxFit.cover,
                width: double.infinity,
                height: height * 0.3,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1, color: Colors.black54),
                  ),
                ),
                child: Text(
                  newsData['text'],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text(newsData["paragraph"]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
