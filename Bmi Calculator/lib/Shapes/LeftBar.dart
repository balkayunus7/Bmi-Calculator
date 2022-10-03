import 'package:flutter/material.dart';
import 'package:notesapp/Constans/Contans.dart';

class LeftBar extends StatelessWidget with ColorsUtility {
  LeftBar({Key? key, required this.barWidth}) : super(key: key);
  final barWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 25,
          width: barWidth,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          )),
          color: accentHexColor,
        ),
      ],
    );
  }
}
