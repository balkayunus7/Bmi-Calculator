import 'package:flutter/material.dart';
import 'package:notesapp/Constans/Contans.dart';

class RightBar extends StatelessWidget with ColorsUtility {
  RightBar({Key? key, required this.barWidth}) : super(key: key);
  final barWidth;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
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
