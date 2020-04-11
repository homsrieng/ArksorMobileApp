import 'package:arksormobileapp/pages/login.dart';
import 'package:arksormobileapp/utils/colors.dart';
import 'package:arksormobileapp/utils/font_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Welcome To ARKSOR APP'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget logo() {
    return  Padding(
      padding: const EdgeInsets.only(
        top: 20
      ),
      child:
      ClipRRect(
        borderRadius: new BorderRadius.circular(10.0),
        child: Image.asset('assets/company/feed_logo.png',width: 170),
      ),
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance
        .addPostFrameCallback((_) => loginPage());
  }
  Future<void> loginPage() async {
    await new Future.delayed(const Duration(seconds: 3));
    Navigator.push(context, new MaterialPageRoute(builder: (__) => new Login()));
  }
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(color: ArksorColor.primaryColor),
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              Text("WELCOME TO ARKSOR APP",style: TextStyle(fontSize: ArksorFontSize.title,fontWeight: FontWeight.bold,color: Colors.white))
            ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  logo()
                ])
          ],
        ),
      )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
