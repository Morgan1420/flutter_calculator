import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(Calculator());
}

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Basic Calculator',
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: BasicCalculator(),
    );
  }
}

class BasicCalculator extends StatefulWidget {
  @override
  _BasicCalculatorState createState() => _BasicCalculatorState();
}

class _BasicCalculatorState extends State<BasicCalculator> {
  Widget buildButton(
      String buttonText, double buttonHeight, Color buttonColor) {
    return Container(
      height: MediaQuery.of(context).size.height * .1 * buttonHeight,
      color: buttonColor,
      child: TextButton(
        style: flatButtonStyle,
        onPressed: null,
        child: Text(
          buttonText,
          style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.normal,
              color: Colors.white),
        ),
      ),
      // M'he quedat aquí
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Basic calculator')),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(10, 20, 20, 0),
            child: Text(
              "0",
              style: TextStyle(fontSize: 38.0),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
            child: Text(
              "0",
              style: TextStyle(fontSize: 48.0),
            ),
          ),
          Expanded(
            child: Divider(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * .75,
                child: Table(
                  children: [
                    TableRow(children: [
                      buildButton("C", 1, Colors.deepOrange),
                      buildButton("⌫", 1, Colors.deepOrange),
                      buildButton("÷", 1, Colors.deepOrange),
                    ]),
                    TableRow(children: [
                      buildButton("7", 1, Colors.grey),
                      buildButton("8", 1, Colors.grey),
                      buildButton("9", 1, Colors.grey),
                    ]),
                    TableRow(children: [
                      buildButton("4", 1, Colors.grey),
                      buildButton("5", 1, Colors.grey),
                      buildButton("6", 1, Colors.grey),
                    ]),
                    TableRow(children: [
                      buildButton("1", 1, Colors.grey),
                      buildButton("2", 1, Colors.grey),
                      buildButton("3", 1, Colors.grey),
                    ]),
                    TableRow(children: [
                      buildButton(".", 1, Colors.grey),
                      buildButton("0", 1, Colors.grey),
                      buildButton("00", 1, Colors.grey),
                    ]),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * .25,
                child: Table(
                  children: [
                    TableRow(children: [
                      buildButton("x", 1, Colors.deepOrange),
                    ]),
                    TableRow(children: [
                      buildButton("-", 1, Colors.deepOrange),
                    ]),
                    TableRow(children: [
                      buildButton("+", 1, Colors.deepOrange),
                    ]),
                    TableRow(children: [
                      buildButton("=", 2, Colors.black87),
                    ]),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  padding: EdgeInsets.all(16.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2.0)),
  ),
);
