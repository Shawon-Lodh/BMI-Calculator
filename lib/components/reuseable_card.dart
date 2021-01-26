import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  final Color backColor;
  final Widget cardChild;
  final Function onPress;

  ReuseableCard({@required this.backColor, this.cardChild, this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: backColor,
        ),
      ),
    );
  }
}