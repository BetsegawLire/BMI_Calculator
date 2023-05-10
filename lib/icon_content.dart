import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  const IconContent(
      {super.key, required this.cardIcon, required this.cardText});

  // ignore: empty_constructor_bodies
  final String cardText;
  final IconData cardIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          // FontAwesomeIcons.mars,
          cardIcon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          cardText,
          style: TextStyle(fontSize: 18, color: Color(0xFF000000)),
        )
      ],
    );
  }
}
