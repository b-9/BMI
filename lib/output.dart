import 'package:flutter/material.dart';
import 'brain.dart';
import 'constant.dart';

class Output extends StatefulWidget {
  @override
  _OutputState createState() => _OutputState();
}

class _OutputState extends State<Output> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('BMI'))),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 9,
            child: Container(
              color: Colors.black38,
              child: Expanded(
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Center(
                        child: Text(
                          bmi.type,
                          style: TextStyle(
                              color: Colors.lime,
                              fontSize: 28,
                              fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        bmi.bmi.toStringAsFixed(2),
                        style: TextStyle(
                          fontSize: 50,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                          margin: EdgeInsets.all(30),
                          child: Text(
                            bmi.message,
                            style: TextStyle(fontSize: 18),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                setState(
                  () {
                    Navigator.pop(context);
                  },
                );
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: Center(
                  child: Text(
                    'next BMI :)',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
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
