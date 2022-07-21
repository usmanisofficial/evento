import 'package:flutter/material.dart';

class Dot extends StatelessWidget {
  final int lengthofDot;
  const Dot({Key? key, required this.lengthofDot}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 40),
      child: Container(
        height: 11,
        width: lengthofDot.toDouble(),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(66, 176, 255, 1),
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
