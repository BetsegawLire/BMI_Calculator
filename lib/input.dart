import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './icon_content.dart';
import './reusable_card.dart';
import 'bottom_button.dart';
import 'calculator_brain.dart';
import 'results_page.dart';

const bottomContainerHeight = 80.0;
var inActiveCardColor = Color.fromARGB(255, 234, 192, 66);
const activeCardColor = Colors.amber;

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  var selectedGender;
  int height = 180;
  int weight = 60;
  int age = 20;

  // Color maleCardColor = inActiveCardColor;
  // Color femaleCardColor = inActiveCardColor;

  // void updateColor(Gender gender) {
  //   if (gender == Gender.male) {
  //     if (maleCardColor == inActiveCardColor) {
  //       maleCardColor = activeCardColor;
  //       femaleCardColor = inActiveCardColor;
  //     } else {
  //       maleCardColor = inActiveCardColor;
  //     }
  //   }
  //   if (gender == Gender.female) {
  //     if (femaleCardColor == inActiveCardColor) {
  //       femaleCardColor = activeCardColor;
  //       maleCardColor = inActiveCardColor;
  //     } else {
  //       femaleCardColor = inActiveCardColor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BMI CALCULATOR")),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          // updateColor(Gender.male);
                          selectedGender == Gender.male
                              ? selectedGender = null
                              : selectedGender = Gender.male;
                        });
                      },
                      child: ReussableCard(
                        child: IconContent(
                          cardText: "Male",
                          cardIcon: FontAwesomeIcons.mars,
                        ),
                        // color: Color(0xFF1D1E33),
                        colour: selectedGender == Gender.male
                            ? activeCardColor
                            : inActiveCardColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          // updateColor(Gender.female);
                          selectedGender == Gender.female
                              ? selectedGender = null
                              : selectedGender = Gender.female;
                          // selectedGender = Gender.female;
                        });
                      },
                      child: ReussableCard(
                        // child: Text("data"),
                        child: IconContent(
                          cardText: "Female",
                          cardIcon: FontAwesomeIcons.venus,
                        ),

                        // color: Color(0xFF1D1E33),
                        colour: selectedGender == Gender.female
                            ? activeCardColor
                            : inActiveCardColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReussableCard(
                // child: Text("data"),
                colour: activeCardColor,
                // child: Text("data"),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'HEIGHT',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'cm',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Colors.white,
                          thumbColor: Color(0xFFEB1555),
                          overlayColor: Color(0x29EB1555),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30)),
                      child: Slider(
                          value: height.toDouble(),
                          min: 120.0,
                          max: 220.0,
                          // activeColor: Color(0xFFEB1555),
                          inactiveColor: Color(0xFF8D8E98),
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          }),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReussableCard(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                          Text(
                            weight.toString(),
                            style: TextStyle(
                                fontSize: 50, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.add,
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              )
                            ],
                          )
                        ],
                      ),
                      // child: IconContent(),
                      // color: Color(0xFF1D1E33),
                      colour: activeCardColor,
                    ),
                  ),
                  Expanded(
                    child: ReussableCard(
                      // child: Text("data"),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                          Text(
                            age.toString(),
                            style: TextStyle(
                                fontSize: 50, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.add,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                              )
                            ],
                          )
                        ],
                      ),
                      // color: Color(0xFF1D1E33),
                      colour: activeCardColor,
                    ),
                  ),
                ],
              ),
            ),
            bottom_button(
              buttonTitle: 'CALCULATE',
              onTap: () {
                CalculatorBrain calc =
                    CalculatorBrain(weight: weight, height: height);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultsPage(
                      BMI: calc.calculateBMI(),
                      BMIResult: calc.getResult(),
                      interpretaion: calc.getInterpretation(),
                    ),
                  ),
                );
                // Navigator.pushNamed(context, '/results');
              },
            )
          ],
        ),
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  // const RoundIconButton({super.key});
  RoundIconButton({required this.icon, required this.onPressed});

  final IconData icon;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(icon),
      elevation: 6,
      constraints: BoxConstraints.tightFor(width: 56, height: 56),
      shape: CircleBorder(),
      fillColor: Color(0xFFEB1555),
    );
  }
}
