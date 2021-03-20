import 'package:flutter/material.dart';
import "package:cscsPractice/screens/news_details/news_details.dart";

class NewsItem extends StatelessWidget {
  final Map newsData;

  NewsItem({this.newsData});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => NewsDetails(
                    newsData: newsData,
                  )),
        );
      },
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset(
              newsData["image"],
              fit: BoxFit.cover,
              width: double.infinity,
              height: width * 0.5,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Text(
                newsData["text"],
                style: TextStyle(color: Colors.black, fontSize: 14),
                maxLines: 2,
              ),
            ),
            Container(
              padding: EdgeInsets.all(2),
              width: double.infinity,
              color: Colors.grey[300],
              child: Text(
                "March 12, 2000",
                style: TextStyle(fontSize: 12),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
