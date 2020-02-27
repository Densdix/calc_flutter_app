import 'package:calc_flutter_app/ui/widgets/button_panel.dart';
import 'package:calc_flutter_app/ui/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  String text = "V1+3=5";
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(160, 149, 149, 1),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                  height: 161,
                  alignment: Alignment.center,
                  padding: EdgeInsets.fromLTRB(15, 32.65, 13, 43.35),
                  child: Text(widget.text,
                    style: TextStyle(color: Color.fromRGBO(255, 245, 238, 1), fontSize: 72, fontFamily: "Roboto", fontStyle: FontStyle.normal),)),
            ),
            Container(
              height: 35,
              color: Color.fromRGBO(152, 141, 141, 1),
              child: Center(
                child: Image.asset(
                  "assets/Vector.png",
                ),
              ),
            ),
            ButtonPanel()
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
