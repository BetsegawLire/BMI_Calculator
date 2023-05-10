import 'package:flutter/material.dart';

class bottom_button extends StatelessWidget {
  bottom_button({required this.buttonTitle, required this.onTap});

  final onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        color: Color(0xFFEB1555),
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 15),
        width: double.infinity,
        height: 80,
      ),
    );
  }
}
