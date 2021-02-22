import 'package:flutter/material.dart';
import 'constant.dart';

class Inter extends StatelessWidget {
  final String text;
  final Icon icon;
  Inter({@required this.icon, this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(flex: 3, child: icon),
              Expanded(child: Text("")),
              Expanded(
                  flex: 2,
                  child: Center(
                      child: Text(
                    text,
                    style: kTextS,
                  ))),
            ]),
      ),
    );
  }
}

class Slide1 extends StatelessWidget {
  final String text;
  final Icon icon;
  Slide1({this.icon, this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(flex: 3, child: icon),
              Expanded(child: Text("")),
              Expanded(flex: 2, child: Center(child: Text(text))),
            ]),
      ),
    );
  }
}

class Button extends StatelessWidget {
  final Color colour;
  final Widget card;

  Button({
    this.colour,
    this.card,
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 3,
        child: Container(
          margin: EdgeInsets.all(5),
          child: card,
          decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(10),
          ),
        ));
  }
}
