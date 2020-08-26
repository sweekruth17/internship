import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Temperature extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: RaisedButton.icon(
      onPressed: () {
        print('Temp Clicked.');
        //navigate to next screen
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      label: Text('Temperature',
          style: TextStyle(color: Colors.black, fontSize: 20.0)),
      icon: Icon(
        MaterialCommunityIcons.thermometer,
        size: 50.0,
        color: Colors.black,
      ),
      textColor: Colors.white,
      splashColor: Colors.yellowAccent,
      color: Colors.amber,
    ));
  }
}
