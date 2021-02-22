import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'button.dart';
import 'constant.dart';
import 'output.dart';
import 'brain.dart';

Color male = Color(0xFF1D1E33);
Color female = Color(0xFF1D1E33);
Gender gender;

class InputPage extends StatefulWidget {
  InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('BMI'))),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    child: Button(
                        colour: gender == Gender.male ? active : normal,
                        card: Inter(
                            text: 'Male',
                            icon: Icon(FontAwesomeIcons.mars, size: 100))),
                    onTap: () {
                      gender = Gender.male;
                      setState(() {});
                    },
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    child: Button(
                        colour: gender == Gender.female ? active : normal,
                        card: Inter(
                            text: 'Female',
                            icon: Icon(FontAwesomeIcons.venus, size: 100))),
                    onTap: () {
                      gender = Gender.female;
                      setState(() {});
                    },
                  ),
                ),
              ],
            ),
          ),
          Button(
            colour: normal,
            card: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "Height",
                      style: kTextS,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: <Text>[
                      Text(
                        (bmi.height.floor()).toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 50),
                      ),
                      Text("cm")
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbColor: activeSlide,
                      activeTrackColor: Colors.white,
                      overlayColor: Color(0x20EB1555),
                    ),
                    child: Slider(
                        min: kminh,
                        max: kmaxh,
                        value: bmi.height,
                        onChanged: (double newval) {
                          setState(() {
                            bmi.height = newval;
                          });
                        }),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Button(
                  colour: normal,
                  card: Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            "Weight",
                            style: kTextS,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: <Text>[
                            Text(
                              (bmi.weight.floor()).toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 50),
                            ),
                            Text("Kg")
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            thumbColor: activeSlide,
                            activeTrackColor: Colors.white,
                            overlayColor: Color(0x20EB1555),
                          ),
                          child: Slider(
                            min: kminw,
                            max: kmaxw,
                            value: bmi.weight,
                            onChanged: (double newval) {
                              setState(
                                () {
                                  bmi.weight = newval;
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Button(
                  colour: normal,
                  card: Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          "Age",
                          style: kTextS,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        children: <Text>[
                          Text(
                            (bmi.age.floor()).toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 50),
                          ),
                          Text("Years")
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          thumbColor: activeSlide,
                          activeTrackColor: Colors.white,
                          overlayColor: Color(0x20EB1555),
                        ),
                        child: Slider(
                          min: kmina,
                          max: kmaxa,
                          value: bmi.age,
                          onChanged: (double newval) {
                            setState(
                              () {
                                bmi.age = newval;
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  )),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                bmi.cal();
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Output()),
                  );
                });
                print("yash");
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: Center(
                  child: Text('calulate BMI',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      )),
                ),
                decoration: BoxDecoration(
                  color: kred,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
