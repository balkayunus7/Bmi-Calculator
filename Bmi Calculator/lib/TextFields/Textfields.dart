import 'package:flutter/material.dart';

class TextfieldContainer extends StatelessWidget {
  const TextfieldContainer({
    Key? key,
    required this.colors,
    required this.text,
    required this.fontSize,
    required this.controller,
  }) : super(key: key);

  final Color colors;
  final String text;
  final double fontSize;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        controller: controller,
        maxLength: 8,
        keyboardType: TextInputType.number,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.w400,
          color: colors,
        ),
        decoration: InputDecoration(
            hintText: text,
            border: InputBorder.none,
            hintStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.w400,
                color: Colors.white60)),
      ),
    );
  }
}
