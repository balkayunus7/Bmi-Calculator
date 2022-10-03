import 'package:flutter/material.dart';
import 'package:notesapp/Constans/Contans.dart';
import 'package:notesapp/TextFields/Textfields.dart';

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

  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();

  double _bmiResult = 0;

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
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //SizedBox opened
                SizedBox(
                  height: 190,
                  width: 175,
                  //Textfields added
                  child: TextfieldContainer(
                    controller: heightController,
                    colors: colors.textFieldColor,
                    text: texts.hintText1,
                    fontSize: fontSizes.hintTextSize,
                  ),
                ),
                //SizedBox opened
                SizedBox(
                  height: 190,
                  width: 175,
                  //Textfields added
                  child: TextfieldContainer(
                    controller: weightController,
                    colors: colors.textFieldColor,
                    text: texts.hintText2,
                    fontSize: fontSizes.hintTextSize,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            //IconButtonAdded
            IconButton(
              onPressed: () {
                double _h = double.parse(heightController.text);
                double _w = double.parse(heightController.text);
                setState(() {
                  _bmiResult = _w / (_h * _h);
                  if (_bmiResult > 25) {
                    Text("vdbhzhv");
                  } else if (_bmiResult >= 18.5 && _bmiResult <= 25) {
                    Text("vdbvdvhzhv");
                  } else {
                    Text("vdbaashzhv");
                  }
                });
              },
              iconSize: 65,
              color: colors.mainHexColor,
              icon: const Icon(
                Icons.heart_broken_outlined,
              ),
            ),
            const SizedBox(height: 30),
            Container(
              alignment: Alignment.center,
              color: Colors.red,
              child: Text(_bmiResult.toString()),
            ),
          ],
        ),
      ),
    );
  }
}
