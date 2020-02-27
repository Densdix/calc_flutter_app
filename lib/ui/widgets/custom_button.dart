import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  String _number;
  Color _btnColor;

  Function(String) onButtonPressed;

  MyButton(this._number, this._btnColor, {this.onButtonPressed});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: _btnColor,
        child: MaterialButton(
          child: Text(_number, style: TextStyle(fontSize: 18, fontFamily: "Roboto", fontWeight: FontWeight.bold, color: Color.fromARGB(62, 0, 0, 0)),),
          height: 70,
          onPressed: (){onButtonPressed(_number);},
        ),
      ),
    );

  }

}
