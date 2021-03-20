import 'package:flutter/material.dart';
import "../../components/header/header.dart";
import "./news_item.dart";

const List<Map> DUMMY_DATA = [
  {
    "image": "assets/images/image-1.jpeg",
    "text":
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
    "paragraph":
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
  },
  {
    "image": "assets/images/image-2.jpeg",
    "text":
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
    "paragraph":
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
  },
  {
    "image": "assets/images/image-3.jpeg",
    "text":
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
    "paragraph":
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
  },
  {
    "image": "assets/images/image-4.jpeg",
    "text":
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
    "paragraph":
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
  },
  {
    "image": "assets/images/image-5.jpeg",
    "text":
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
    "paragraph":
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
  },
  {
    "image": "assets/images/image-6.jpeg",
    "text":
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
    "paragraph":
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
  },
];

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(children: <Widget>[
        Container(
          width: double.infinity,
          child: Image(
            image: AssetImage(
                './assets/images/cscs-background-half-transparent-2.png'),
            fit: BoxFit.fill,
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Header(),
              Text(
                "News",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: DUMMY_DATA.length,
                    itemBuilder: (BuildContext context, int index) {
                      return NewsItem(newsData: DUMMY_DATA[index]);
                    }),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        )
      ])),
    );
  }
}
