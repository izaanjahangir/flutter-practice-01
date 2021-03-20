import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final bool shouldHaveBackground;
  final bool showBackArrow;
  final bool showTitle;
  final String title;

  Header(
      {this.shouldHaveBackground = false,
      this.showBackArrow = false,
      this.title,
      this.showTitle = false});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Container(
      decoration: shouldHaveBackground
          ? BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    "assets/images/cscs-background-half-transparent-2.png"),
                fit: BoxFit.cover,
              ),
            )
          : null,
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: height * 0.07,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            showBackArrow
                ? InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: width * 0.08,
                    ),
                  )
                : InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: width * 0.08,
                    ),
                  ),
            if (showTitle)
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  title,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              )
          ]),
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.mail_outline_outlined,
              color: Colors.white54,
              size: width * 0.08,
              semanticLabel: 'Text to announce in accessibility modes',
            ),
          ),
        ],
      ),
    );
  }
}
