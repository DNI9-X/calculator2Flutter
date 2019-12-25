import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  String value = '';
  String opr = '';
  int sum = 0, num1 = 0, num2 = 0;

  void _setValue(String arg) {
    setState(() {
      value += arg;
    });
  }

  void guun(String arg) {
    setState(() {
      opr = arg;
      num1 = int.parse(value);
      clearOutput("");
    });
  }

  void doOperation() {
    setState(() {
      num2 = int.parse(value);
      clearOutput("");
      if (opr == "+") {
        sum = num1 + num2;
      } else if (opr == "-") {
        sum = num1 - num2;
      } else if (opr == "*") {
        sum = num1 * num2;
      } else {
        sum = num1 ~/ num2;
      }
      value = sum.toString();
    });
  }

  void clearOutput(String arg) {
    setState(() {
      value = arg;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Calculator"),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "$value",
                    style: TextStyle(fontSize: 30.0),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 50.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MaterialButton(
                    child: Text(
                      "1",
                      style: TextStyle(fontSize: 25.0),
                    ),
                    height: 50.0,
                    minWidth: 60.0,
                    color: Colors.white,
                    onPressed: () => _setValue('1'),
                  ),
                  MaterialButton(
                    child: Text(
                      "2",
                      style: TextStyle(fontSize: 25.0),
                    ),
                    color: Colors.white,
                    height: 50.0,
                    minWidth: 60.0,
                    onPressed: () => _setValue('2'),
                  ),
                  MaterialButton(
                    child: Text(
                      "3",
                      style: TextStyle(fontSize: 25.0),
                    ),
                    height: 50.0,
                    minWidth: 60.0,
                    color: Colors.white,
                    onPressed: () => _setValue('3'),
                  ),
                  MaterialButton(
                    child: Text(
                      "+",
                      style: TextStyle(fontSize: 25.0),
                    ),
                    height: 50.0,
                    minWidth: 80.0,
                    color: Colors.lightBlueAccent,
                    onPressed: () => guun("+"),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MaterialButton(
                    child: Text(
                      "4",
                      style: TextStyle(fontSize: 25.0),
                    ),
                    height: 50.0,
                    minWidth: 60.0,
                    color: Colors.white,
                    onPressed: () => _setValue('4'),
                  ),
                  MaterialButton(
                    child: Text(
                      "5",
                      style: TextStyle(fontSize: 25.0),
                    ),
                    color: Colors.white,
                    height: 50.0,
                    minWidth: 60.0,
                    onPressed: () => _setValue('5'),
                  ),
                  MaterialButton(
                    child: Text(
                      "6",
                      style: TextStyle(fontSize: 25.0),
                    ),
                    height: 50.0,
                    minWidth: 60.0,
                    color: Colors.white,
                    onPressed: () => _setValue('6'),
                  ),
                  MaterialButton(
                    child: Text(
                      "-",
                      style: TextStyle(fontSize: 25.0),
                    ),
                    height: 50.0,
                    minWidth: 80.0,
                    color: Colors.lightBlueAccent,
                    onPressed: () => guun("-"),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MaterialButton(
                    child: Text(
                      "7",
                      style: TextStyle(fontSize: 25.0),
                    ),
                    height: 50.0,
                    minWidth: 60.0,
                    color: Colors.white,
                    onPressed: () => _setValue('7'),
                  ),
                  MaterialButton(
                    child: Text(
                      "8",
                      style: TextStyle(fontSize: 25.0),
                    ),
                    color: Colors.white,
                    height: 50.0,
                    minWidth: 60.0,
                    onPressed: () => _setValue('8'),
                  ),
                  MaterialButton(
                    child: Text(
                      "9",
                      style: TextStyle(fontSize: 25.0),
                    ),
                    height: 50.0,
                    minWidth: 60.0,
                    color: Colors.white,
                    onPressed: () => _setValue('9'),
                  ),
                  MaterialButton(
                    child: Text(
                      "*",
                      style: TextStyle(fontSize: 25.0),
                    ),
                    height: 50.0,
                    minWidth: 80.0,
                    color: Colors.lightBlueAccent,
                    onPressed: () => guun("*"),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MaterialButton(
                    child: Text(
                      "0",
                      style: TextStyle(fontSize: 25.0),
                    ),
                    color: Colors.white,
                    height: 50.0,
                    minWidth: 60.0,
                    onPressed: () => _setValue('0'),
                  ),
                  MaterialButton(
                    // child: Text(
                    //   "Clear",
                    //   style: TextStyle(fontSize: 20.0),
                    // ),
                    child: Text(
                      "Clear",
                      style: TextStyle(fontSize: 18.0),
                    ),
                    height: 50.0,
                    minWidth: 60.0,
                    color: Colors.white,
                    onPressed: () => clearOutput(''),
                  ),
                  MaterialButton(
                    child: Text(
                      "=",
                      style: TextStyle(fontSize: 35.0),
                    ),
                    color: Colors.white,
                    height: 50.0,
                    minWidth: 60.0,
                    onPressed: doOperation,
                  ),
                  MaterialButton(
                    child: Text(
                      "/",
                      style: TextStyle(fontSize: 25.0),
                    ),
                    height: 50.0,
                    minWidth: 80.0,
                    color: Colors.lightBlueAccent,
                    onPressed: () => guun("/"),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
