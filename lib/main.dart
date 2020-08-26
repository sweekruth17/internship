import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rpms1/functionality/heart_rate.dart';
import 'package:rpms1/functionality/glucose.dart';
import 'package:rpms1/functionality/temp.dart';
import 'package:rpms1/functionality/blood_pressure.dart';
import 'package:rpms1/functionality/oxygen.dart';
import './MainPage.dart';
//import 'package:rmps1/lib/MainPage.dart';

//package name :blackhammer.rpms1
void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "first stateful widget!",
      home: NavDrawerExample(),
      theme: ThemeData.dark()));
}

class NavDrawerExample extends StatelessWidget {
  const NavDrawerExample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSwitched = false;
    final drawerHeader = UserAccountsDrawerHeader(
      accountName: Text('User Name'),
      accountEmail: Text('user.name@email.com'),
      //have to add user id and name from auth
      currentAccountPicture: CircleAvatar(
        child: FlutterLogo(size: 42.0),
        backgroundColor: Colors.white,
        //we have to add functionality to add user image
      ),
      otherAccountsPictures: <Widget>[
        CircleAvatar(
          //multiple user accounts
          child: Text('A'),
          backgroundColor: Colors.yellow,
        ),
        // CircleAvatar(
        //   child: Text('B'),
        //   backgroundColor: Colors.red,
        // )
      ],
    );
    final drawerItems = ListView(
      children: <Widget>[
        drawerHeader,
        ListTile(
          trailing: Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = true;
              });
            },
            activeTrackColor: Colors.lightGreenAccent,
            activeColor: Colors.green,
          ),
          title: Text('dark theme'),
          onTap: () => Navigator.of(context).push(_NewPage(1)),
        ),
        ListTile(
          title: Text('Change Password'),
          onTap: () => Navigator.of(context).push(_NewPage(2)),
          trailing: Icon(Icons.refresh),
        ),
        ListTile(
          title: Text('History'),
          onTap: () {},
          trailing: Icon(Icons.compare_arrows),
        ),
        ListTile(
          title: Text('Connect'),
          onTap: () {
            Navigator.push(context, _ble());
            //MainPage();
            //  Navigator.of(context).push(
            //    MainPage());
          },
          trailing: Icon(Icons.bluetooth),
        ),
        new Divider(),
        ListTile(
          title: Text('About'),
          onTap: () {},
          trailing: Icon(Icons.info_outline),
        ),
      ],
    );
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text('Welcome user!'),
          //have to add user name from auth
        ),
        body: Center(
            child: Column(children: <Widget>[
          Padding(child: Heart(), padding: EdgeInsets.all(15.0)),
          Padding(child: Temperature(), padding: EdgeInsets.all(15.0)),
          Padding(child: Blood_Pressure(), padding: EdgeInsets.all(15.0)),
          Padding(child: Oxygen_Percentage(), padding: EdgeInsets.all(22.0)),
          Padding(child: Glucose(), padding: EdgeInsets.all(15.0))
        ])),
        drawer: Drawer(
          child: drawerItems,
        ));
  }

  void setState(Null Function() param0) {}
}

// <Null> means this route returns nothing.
class _NewPage extends MaterialPageRoute<Null> {
  _NewPage(int id)
      : super(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Page $id'),
              elevation: 1.0,
            ),
            body: Center(
              child: Text('Page $id'),
            ),
          );
        });
}

class _ble extends MaterialPageRoute<Null> {
  _ble()
      : super(builder: (BuildContext context) {
          return MainPage();
        });
}
