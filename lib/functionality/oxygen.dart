import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:rpms1/bluetooth/costomicon_icons.dart';

class Oxygen_Percentage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: RaisedButton.icon(
      onPressed: () {
        print('oximeter  Clicked.');
        //navigate to next screen
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      label: Text('Oximeter',
          style: TextStyle(color: Colors.black, fontSize: 20.0)),
      icon: Icon(
        Costomicon.pulse_oximeter,
        size: 50.0,
        color: Colors.black,
      ),
      textColor: Colors.white,
      splashColor: Colors.white,
      color: Colors.amber,
    ));
  }
}
