import 'package:calc_flutter_app/ui/widgets/custom_button.dart';
import 'package:calc_flutter_app/ui/widgets/v_panel.dart';
import 'package:flutter/material.dart';

class ButtonPanel extends StatelessWidget{
  Function pressed;
  ButtonPanel(this.pressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            children: <Widget>[
              //MyButton("C", Color.fromRGBO(243, 243, 243, 1), Color.fromRGBO(243, 243, 243, 1), myCallback: (value){debugPrint(value);}),
              Vpanel("V1", "2"),
              Vpanel("V2", "23,5"),
              Vpanel("V3", "-"),
              Vpanel("V4", "15"),
            ],
          ),
          Row(
            children: <Widget>[
              MyButton("C", Color.fromRGBO(243, 243, 243, 1), onButtonPressed:  this.pressed),
              MyButton("÷", Color.fromRGBO(243, 243, 243, 1), onButtonPressed:  this.pressed),
              MyButton("x", Color.fromRGBO(243, 243, 243, 1), onButtonPressed:  this.pressed),
              Expanded(
                child: MaterialButton(
                  child: Center(child: Image.asset(
                    "assets/Union.png",
                  ),),
                  height: 70,
                  color: Color.fromRGBO(202, 191, 191, 1),
                  onPressed: (){pressed("arrow");},
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              MyButton("7", Color.fromRGBO(236, 236, 236, 1), onButtonPressed:  this.pressed),
              MyButton("8", Color.fromRGBO(236, 236, 236, 1), onButtonPressed:  this.pressed),
              MyButton("9", Color.fromRGBO(236, 236, 236, 1), onButtonPressed:  this.pressed),
              MyButton("-", Color.fromRGBO(184, 176, 176, 1), onButtonPressed:  this.pressed),
            ],
          ),
          Row(
            children: <Widget>[
              MyButton("4", Color.fromRGBO(243, 243, 243, 1), onButtonPressed:  this.pressed),
              MyButton("5", Color.fromRGBO(243, 243, 243, 1), onButtonPressed:  this.pressed),
              MyButton("6", Color.fromRGBO(243, 243, 243, 1), onButtonPressed:  this.pressed),
              MyButton("+", Color.fromRGBO(202, 191, 191, 1), onButtonPressed:  this.pressed),
            ],
          ),Row(
            children: <Widget>[
              MyButton("1", Color.fromRGBO(236, 236, 236, 1), onButtonPressed:  this.pressed),
              MyButton("2", Color.fromRGBO(236, 236, 236, 1), onButtonPressed:  this.pressed),
              MyButton("3", Color.fromRGBO(236, 236, 236, 1), onButtonPressed:  this.pressed),
              MyButton("()", Color.fromRGBO(184, 176, 176, 1), onButtonPressed:  this.pressed),
            ],
          ),Row(
            children: <Widget>[
              MyButton("0", Color.fromRGBO(243, 243, 243, 1), onButtonPressed:  this.pressed),
              MyButton(".", Color.fromRGBO(243, 243, 243, 1), onButtonPressed:  this.pressed),
              MyButton("+/-", Color.fromRGBO(243, 243, 243, 1), onButtonPressed:  this.pressed),
              MyButton("=", Color.fromRGBO(202, 191, 191, 1), onButtonPressed:  this.pressed),
            ],
          )
        ],
      ),
    );
  }

}