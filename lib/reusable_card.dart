import 'package:flutter/material.dart';

class ReussableCard extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  ReussableCard({
    required this.colour,
    this.child,
  });

  final Color colour;
  late var child;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
