import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  String _number;
  Color _btnColor;
  String text = "0";
  String _text = "0";
  String operand = "";
  String number = "";
  double num1 = 0.0;
  double num2 = 0.0;
  bool flag = false;
  Function(String) myCallback;


  MyButton(this._number, this._btnColor, {this.myCallback});

  addSymbol(String symbol){
    myCallback(symbol);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MaterialButton(
        child: Text(_number, style: TextStyle(fontSize: 18, fontFamily: "Roboto", fontWeight: FontWeight.bold),),
        height: 70,
        color: _btnColor,
        padding: EdgeInsets.all(0.0),
        textColor: Color.fromRGBO(194,194,194,1), onPressed: () {},
      ),
    );

  /*@override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
            side: BorderSide(
                color: Colors.white,
                width: 1,
                style: BorderStyle.solid
            )
        ),
        padding: EdgeInsets.all(20),
        child: Text(_number, style: TextStyle(fontSize: 20)),
        onPressed: () => addSymbol(_number),
        color: _color,
        textColor: Colors.white,
      ),
    );*/
//    addSymbol(String symbol) {
//      myCallback(symbol);
//      return;
//      if(text.length <= 30) {
//        if (symbol == "C") {
//          _text = "0";
//          text = "0";
//          operand = "";
//          num1 = 0.0;
//          num2 = 0.0;
//        }
//        else if (symbol == "+" || symbol == "-" || symbol == "*" || symbol == "/") {
//          num1 = double.parse(number);
//          number = "";
//          _text += symbol;
//          operand = symbol;
//        }
//        else if (symbol == "=") {
//          num2 = double.parse(number);
//          number = "";
//          switch (operand) {
//            case "+":
//              _text = (num1 + num2).toString();
//              break;
//            case "-":
//              _text = (num1 - num2).toString();
//              break;
//            case "*":
//              _text = (num1 * num2).toString();
//              break;
//            case "/":
//              _text = (num1 / num2).toString();
//              break;
//            default: _text = "0";
//          }
//          num1 = 0.0;
//          num2 = 0.0;
//        }
//        else {
//          if(_text == "0"){
//            _text = "";
//          }
//          number+=symbol;
//          _text += symbol;
//        }
//      }
//    }
  }


}
