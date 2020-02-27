import 'package:calc_flutter_app/ui/display/screen.dart';
import 'package:calc_flutter_app/ui/widgets/button_panel.dart';
import 'package:calc_flutter_app/ui/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  Calculator({Key key, this.title}) : super(key: key);

  String text = "V1+3=5";
  final String title;

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(160, 149, 149, 1),
        child: Column(
          children: <Widget>[
            ScreenPanel(widget.text),
            Container(
              height: 35,
              color: Color.fromRGBO(152, 141, 141, 1),
              child: Center(
                child: Image.asset(
                  "assets/Vector.png",
                ),
              ),
            ),
            ButtonPanel(this.onButtonPressed)
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void onButtonPressed(String t) {
    if(t == "C"){
      clearScreen();
    }
    else if (t == "arrow"){
      cleanSymbol();
    }
    else setState(() {
        widget.text += t;
      });
  }

  void clearScreen(){
    setState(() {
      widget.text ="";
    });
  }

  void cleanSymbol(){
    setState(() {
      widget.text = widget.text.substring(0, widget.text.length - 1);
    });
  }


}
