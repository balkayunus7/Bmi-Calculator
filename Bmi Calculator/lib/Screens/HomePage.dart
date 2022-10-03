import 'package:flutter/material.dart';
import 'package:notesapp/Constans/Contans.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final colors = ColorsUtility();
  final texts = TextUtility();
  final fontSizes = SizeFonts();
  final contaDim = ContainerDimensions();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(texts.headlinebarText,
            style: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(color: colors.mainHexColor)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 190,
                  width: 175,
                  child: _TextfieldContainer(
                    colors: colors,
                    text: texts.hintText1,
                    fontSize: fontSizes.hintTextSize,
                    maxLength: contaDim.textfieldMaxLength,
                  ),
                ),
                SizedBox(
                  height: 190,
                  width: 175,
                  child: _TextfieldContainer(
                    colors: colors,
                    text: texts.hintText2,
                    fontSize: fontSizes.hintTextSize,
                    maxLength: contaDim.textfieldMaxLength,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.heart_broken_outlined),
            ),
          ],
        ),
      ),
    );
  }
}

class _TextfieldContainer extends StatelessWidget {
  const _TextfieldContainer({
    Key? key,
    required this.colors,
    required this.text,
    required this.fontSize,
    required this.maxLength,
  }) : super(key: key);

  final ColorsUtility colors;
  final String text;
  final double fontSize;
  final double maxLength;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        maxLength: 8,
        keyboardType: TextInputType.number,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.w400,
          color: colors.textFieldColor,
        ),
        decoration: InputDecoration(
            hintText: text,
            hintStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.w400,
                color: Colors.white60)),
      ),
    );
  }
}

