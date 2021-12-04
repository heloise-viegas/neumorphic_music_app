import 'package:flutter/material.dart';


class CircleShadow extends StatelessWidget {
  const CircleShadow({Key? key, this.circleSize, this.icon})
      : super(key: key);

  final double? circleSize;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: circleSize,
      width: circleSize,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: const Color(0xFF303030),
        boxShadow: [
          BoxShadow(
              color: Colors.white.withOpacity(0.4), //0xFF28D3ED
              offset: const Offset(-6.0, -6.0),
              blurRadius: 16.0,
              spreadRadius: 2.0),
          BoxShadow(
              color: Colors.black.withOpacity(0.8),
              offset: const Offset(6.0, 6.0),
              blurRadius: 16.0,
              spreadRadius: 4.0),
        ],
      ),
      child: icon,
    );
  }
}