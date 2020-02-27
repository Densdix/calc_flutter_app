
import 'package:flutter/material.dart';

class ScreenPanel extends StatefulWidget{
  String text = "";
  ScreenPanel(this.text);

  @override
  State<StatefulWidget> createState() => _ScreenPanelState();

}

class _ScreenPanelState extends State<ScreenPanel>{

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          height: 161,
          alignment: Alignment.center,
          padding: EdgeInsets.fromLTRB(15, 32.65, 13, 43.35),
          child: Text(widget.text,
            style: TextStyle(color: Color.fromRGBO(255, 245, 238, 1), fontSize: 72, fontFamily: "Roboto", fontStyle: FontStyle.normal),)),
    );
  }
}