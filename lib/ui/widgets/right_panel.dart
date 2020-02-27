import 'package:flutter/material.dart';

class RightPanel extends StatelessWidget{
  String _number;
  Color _btnColor;


  RightPanel(this._number, this._btnColor);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MaterialButton(
        child: Text(_number, style: TextStyle(
            fontSize: 18, fontFamily: "Roboto", fontWeight: FontWeight.bold),),
        height: 70,
        color: _btnColor,
        padding: EdgeInsets.all(0.0),
        textColor: Color.fromRGBO(194, 194, 194, 1),
        onPressed: () {},
      ),
    );
  }
}