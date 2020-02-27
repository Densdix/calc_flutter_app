import 'package:flutter/material.dart';

class Vpanel extends StatelessWidget{
  String _text;
  String _number;


  Vpanel(this._text, this._number);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Color.fromRGBO(214, 229 , 251, 1),
        child: MaterialButton(
          child: Column(
            children: <Widget>[
              Text(_text, style: TextStyle(color: Color.fromRGBO(194, 194, 194, 1),fontSize: 18, fontFamily: "Roboto", fontWeight: FontWeight.bold),),
              Text(_number, style: TextStyle(color: Color.fromRGBO(140, 140, 140, 1), fontSize: 11),)
            ],
          ),
          height: 70,
          onPressed: () {},),
      ),
    );
  }
}