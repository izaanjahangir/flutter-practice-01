import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Container(
      height: height * 0.07,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.menu,
              color: Colors.white,
              size: width * 0.08,
              semanticLabel: 'Text to announce in accessibility modes',
            ),
          ),
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
