import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'box.dart';
import 'style.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFF7a3a1e);
const inactiveCardColor = Colors.cyan;
const activeCardColor = Colors.teal;
const kLabelText = TextStyle(
  fontSize: 18,
);
const kNumberText = TextStyle(
  fontSize: 45,
  fontWeight: FontWeight.bold,
);
int height = 180;

enum Exam {
  Amit,
  Badol,
  Arup,
  Anup,
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Exam selected = Exam.Anup;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      appBar: AppBar(
        backgroundColor: activeCardColor,
        title: const Text('Exam'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selected = Exam.Anup;
                        ;
                      });
                    },
                    child: containerBox(
                      color: selected == Exam.Anup
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.algolia,
                        label: "Anup",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: containerBox(
                    color: activeCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            thumbShape: RoundSliderThumbShape(
                              enabledThumbRadius: 16,
                            ),
                            thumbColor: inactiveCardColor,
                            overlayShape: RoundSliderOverlayShape(
                              overlayRadius: 28,
                            ),
                            activeTrackColor: Colors.deepPurple,
                            inactiveTrackColor: Colors.white,
                          ),
                          child: Slider(
                            value: height.toDouble(),
                            min: 80,
                            max: 320,
                            divisions: 5,
                            onChanged: (double changeHeight) {
                              setState(() {
                                height = changeHeight.round();
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selected = Exam.Amit;
                      });
                    },
                    child: containerBox(
                      color: selected == Exam.Amit
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.alignCenter,
                        label: "Amit",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selected = Exam.Badol;
                        ;
                      });
                    },
                    child: containerBox(
                      color: selected == Exam.Badol
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.alipay,
                        label: "Badol",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selected = Exam.Arup;
                        ;
                      });
                    },
                    child: containerBox(
                      color: selected == Exam.Arup
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.android,
                        label: "Arup",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.favorite, color: Colors.pink,),
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
