import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Heart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton.icon(
        onPressed: () {
          print('Heart rate Clicked.');
          //navigate to next screen
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        label: Text('Heart Rate',
            style: TextStyle(color: Colors.black, fontSize: 20.0)),
        icon: Icon(
          CupertinoIcons.heart_solid,
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
