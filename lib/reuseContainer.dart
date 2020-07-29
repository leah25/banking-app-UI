import 'package:flutter/material.dart';

class ContainerIcon extends StatelessWidget {
  ContainerIcon({this.inIcon});
  final Widget inIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.0,
      width: 45.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: inIcon,
    );
  }
}
