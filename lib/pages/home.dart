import 'package:arksormobileapp/pages/feeds.dart';
import 'package:arksormobileapp/pages/login.dart';
import 'package:arksormobileapp/pages/notification.dart';
import 'package:arksormobileapp/pages/setting.dart';
import 'package:arksormobileapp/pages/user_profile.dart';
import 'package:arksormobileapp/utils/colors.dart';
import 'package:flutter/material.dart';

void main() => runApp(HomeScreen());

/// This Widget is the main application widget.
class HomeScreen extends StatelessWidget {
  static const String _title = 'Home Screen';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[Text(
      'Index 1: Notification',
      style: optionStyle,
    ),
    Text(
      'Index 2: Profile',
      style: optionStyle,
    ),
    Text(
      'Index 3: Setting',
      style: optionStyle,
    ),
  ];

  final options = [
    FeedPage(),
    NotificationPage(),
    UserProfilePage(),
    SettingPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
   static Widget homePage(){
    return(
      Column(children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Text("Feeds")
        ],)
      ],)
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        backgroundColor: ArksorColor.primaryColor,
//        title: const Text("Title"),
//      ),
      body: Center(
        child: options.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text(''),
          )

        ],
        currentIndex: _selectedIndex,
        selectedItemColor: ArksorColor.primaryColor,
        onTap: _onItemTapped,
      ),
    );
  }
}