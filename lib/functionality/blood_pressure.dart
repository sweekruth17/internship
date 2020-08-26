import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:rpms1/costomicon_icons.dart';

class Blood_Pressure extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton.icon(
        onPressed: () {
          print('Blood pressue Clicked.');
          //navigate to next screen
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        label: Text('Blood Pressure',
            style: TextStyle(color: Colors.black, fontSize: 20.0)),
        icon: Icon(
          Costomicon.blood_pressure_control_tool,
          color: Colors.red,
          size: 50.0,
        ),
        textColor: Colors.white,
        splashColor: Colors.red,
        color: Colors.amber,
      ),
    );
  }
}
