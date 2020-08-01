import 'package:espeakings/custom_drawer.dart';
import 'package:espeakings/rounded_button.dart';
import 'package:espeakings/variable.dart';
import 'package:flutter/material.dart';

import 'menu/aboutus.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ESA School',
      debugShowCheckedModeBanner: false,
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
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'ESA Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    final Size screenSize = MediaQuery.of(context).size;
    screenDimen = screenSize;
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      drawer: CustomDrawer(),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 8.0, left: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text('ESA'),
                      Container(
                        height: widthScreen / 8,
                        width: widthScreen / 8,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          //boxShadow: [BoxShadow(color: Colors.black26, offset: Offset(1,0),blurRadius: 5)],
                        ),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/aboutus.png'),
                          child: null,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: ((widthScreen * 7) / 8) - 30,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 8, top: 8),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Aboutus()),
                                      );
                                    },
                                    child: Column(
                                      children: <Widget>[
                                        Card(
                                          elevation: 5,
                                          child: Container(
                                            height: widthScreen / 8,
                                            width: widthScreen / 8,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              //boxShadow: [BoxShadow(color: Colors.black26, offset: Offset(1,0),blurRadius: 5)],
                                            ),
                                            child: CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  'images/aboutus.png'),
                                              child: null,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 8),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.blue,
                                                  width: 1,
                                                  style: BorderStyle.solid)),
                                          child: Text("Cours en ligne"),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 8, top: 8),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Aboutus()),
                                      );
                                    },
                                    child: Column(
                                      children: <Widget>[
                                        Card(
                                          elevation: 5,
                                          child: Container(
                                            height: widthScreen / 8,
                                            width: widthScreen / 8,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              //boxShadow: [BoxShadow(color: Colors.black26, offset: Offset(1,0),blurRadius: 5)],
                                            ),
                                            child: CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  'images/service.png'),
                                              child: null,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 8),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.blue,
                                                  width: 1,
                                                  style: BorderStyle.solid)),
                                          child: Text("Home"),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 8, top: 8),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Aboutus()),
                                      );
                                    },
                                    child: Column(
                                      children: <Widget>[
                                        Card(
                                          elevation: 5,
                                          child: Container(
                                            height: widthScreen / 8,
                                            width: widthScreen / 8,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              //boxShadow: [BoxShadow(color: Colors.black26, offset: Offset(1,0),blurRadius: 5)],
                                            ),
                                            child: CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  'images/vehicule.png'),
                                              child: null,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 8),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.blue,
                                                  width: 1,
                                                  style: BorderStyle.solid)),
                                          child: Text("Mission"),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 8, top: 8),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Aboutus()),
                                      );
                                    },
                                    child: Column(
                                      children: <Widget>[
                                        Card(
                                          elevation: 5,
                                          child: Container(
                                            height: widthScreen / 8,
                                            width: widthScreen / 8,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              //boxShadow: [BoxShadow(color: Colors.black26, offset: Offset(1,0),blurRadius: 5)],
                                            ),
                                            child: CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  'images/driver.png'),
                                              child: null,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 8),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.blue,
                                                  width: 1,
                                                  style: BorderStyle.solid)),
                                          child: Text("Course"),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 8, top: 8),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Aboutus()),
                                      );
                                    },
                                    child: Column(
                                      children: <Widget>[
                                        Card(
                                          elevation: 5,
                                          child: Container(
                                            height: widthScreen / 8,
                                            width: widthScreen / 8,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              //boxShadow: [BoxShadow(color: Colors.black26, offset: Offset(1,0),blurRadius: 5)],
                                            ),
                                            child: CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  'images/contact.png'),
                                              child: null,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 8),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.blue,
                                                  width: 1,
                                                  style: BorderStyle.solid)),
                                          child: Text("About Us"),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 8, top: 8),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Aboutus()),
                                      );
                                    },
                                    child: Column(
                                      children: <Widget>[
                                        Card(
                                          elevation: 5,
                                          child: Container(
                                            height: widthScreen / 8,
                                            width: widthScreen / 8,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              //boxShadow: [BoxShadow(color: Colors.black26, offset: Offset(1,0),blurRadius: 5)],
                                            ),
                                            child: CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  'images/contact.png'),
                                              child: null,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 8),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.blue,
                                                  width: 1,
                                                  style: BorderStyle.solid)),
                                          child: Text("Contact"),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Flexible(
              child: Container(
                padding: EdgeInsets.only(left: 8, right: 8),
                decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    )),
                child: ListView(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: widthScreen / 5,
                                  width: widthScreen / 5,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    //boxShadow: [BoxShadow(color: Colors.black26, offset: Offset(1,0),blurRadius: 5)],
                                  ),
                                  child: CircleAvatar(
                                    backgroundImage:
                                        AssetImage('images/contact.png'),
                                    child: null,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Agib.........",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text("CEO of ESA"),
                              ],
                            ),
                            Flexible(
                              child: Container(
                                width: widthScreen,
                                child: Column(
                                  children: [
                                    Text("Our Team",
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w700)),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: <Widget>[
                                          Container(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0, right: 8, top: 8),
                                              child: GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Aboutus()),
                                                  );
                                                },
                                                child: Column(
                                                  children: <Widget>[
                                                    Card(
                                                      elevation: 5,
                                                      child: Container(
                                                        height: widthScreen / 6,
                                                        width: widthScreen / 6,
                                                        decoration:
                                                            BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          //boxShadow: [BoxShadow(color: Colors.black26, offset: Offset(1,0),blurRadius: 5)],
                                                        ),
                                                        child: CircleAvatar(
                                                          backgroundImage:
                                                              AssetImage(
                                                                  'images/team.png'),
                                                          child: null,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          top: 8),
//                                          decoration: BoxDecoration(
//                                              border: Border.all(
//                                                  color: Colors.blue,
//                                                  width: 1,
//                                                  style: BorderStyle.solid)),
                                                      child: Text("Mr John"),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0, right: 8, top: 8),
                                              child: GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Aboutus()),
                                                  );
                                                },
                                                child: Column(
                                                  children: <Widget>[
                                                    Card(
                                                      elevation: 5,
                                                      child: Container(
                                                        height: widthScreen / 6,
                                                        width: widthScreen / 6,
                                                        decoration:
                                                            BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          //boxShadow: [BoxShadow(color: Colors.black26, offset: Offset(1,0),blurRadius: 5)],
                                                        ),
                                                        child: CircleAvatar(
                                                          backgroundImage:
                                                              AssetImage(
                                                                  'images/team.png'),
                                                          child: null,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          top: 8),
//                                          decoration: BoxDecoration(
//                                              border: Border.all(
//                                                  color: Colors.blue,
//                                                  width: 1,
//                                                  style: BorderStyle.solid)),
                                                      child: Text("Mr John"),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0, right: 8, top: 8),
                                              child: GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Aboutus()),
                                                  );
                                                },
                                                child: Column(
                                                  children: <Widget>[
                                                    Card(
                                                      elevation: 5,
                                                      child: Container(
                                                        height: widthScreen / 6,
                                                        width: widthScreen / 6,
                                                        decoration:
                                                            BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          //boxShadow: [BoxShadow(color: Colors.black26, offset: Offset(1,0),blurRadius: 5)],
                                                        ),
                                                        child: CircleAvatar(
                                                          backgroundImage:
                                                              AssetImage(
                                                                  'images/team.png'),
                                                          child: null,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          top: 8),
//                                          decoration: BoxDecoration(
//                                              border: Border.all(
//                                                  color: Colors.blue,
//                                                  width: 1,
//                                                  style: BorderStyle.solid)),
                                                      child: Text("Mr John"),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            height: 10,
                            width: widthScreen,
                            decoration: BoxDecoration(
                                border: Border(
                              top: BorderSide(
                                //                   <--- left side
                                color: Colors.white,
                                width: 3.0,
                              ),
                            )),
                            child: null,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8),
                          child: Text("Our Course Offerings",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w700)),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Container(
                            //color: Colors.blue[200],
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                // Text("Our Course Offerings",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700)),

                                Container(
                                  margin: EdgeInsets.only(top: 5),
                                  decoration: BoxDecoration(
                                      color: const Color(0xff04b8fc),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20.0),
                                          topRight: Radius.circular(20.0),
                                          bottomLeft: Radius.circular(20.0),
                                          bottomRight: Radius.circular(20))),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, right: 8, top: 8),
                                    child: Center(
                                      child: Column(
                                        //mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(top: 8),
//                                          decoration: BoxDecoration(
//                                              border: Border.all(
//                                                  color: Colors.blue,
//                                                  width: 1,
//                                                  style: BorderStyle.solid)),
                                            child: Text(
                                                "Basic Skills for over 12 languages",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700)),
                                          ),
                                          Card(
                                            elevation: 5,
                                            child: Container(
                                              height: widthScreen / 3,
                                              width: widthScreen / 2 + 50,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                //boxShadow: [BoxShadow(color: Colors.black26, offset: Offset(1,0),blurRadius: 5)],
                                              ),
                                              child: CircleAvatar(
                                                backgroundImage: AssetImage(
                                                    'images/team.png'),
                                                child: null,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 8),
//                                          decoration: BoxDecoration(
//                                              border: Border.all(
//                                                  color: Colors.blue,
//                                                  width: 1,
//                                                  style: BorderStyle.solid)),
                                            child: Text(
                                              "6 WEEKS CLASSES",
                                              style: TextStyle(
                                                  color: Colors.yellow),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 8),
//                                          decoration: BoxDecoration(
//                                              border: Border.all(
//                                                  color: Colors.blue,
//                                                  width: 1,
//                                                  style: BorderStyle.solid)),
                                            //height: widthScreen / 7+80,
                                            width: widthScreen / 2 + 50,
                                            //color: Colors.yellow,
                                            child: Text(
                                              "Mr John is the way fdnvbfkbjsdnvnvfnvnnnvjnfvjewojjksdna fnasdnfj ",
                                              softWrap: true,
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 8, bottom: 8),
//padding: EdgeInsets.only(bottom: 10),
//                                          decoration: BoxDecoration(
//                                              border: Border.all(
//                                                  color: Colors.blue,
//                                                  width: 1,
//                                                  style: BorderStyle.solid)),
                                            //height: widthScreen / 7+80,
                                            width: widthScreen / 2 + 50,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                RoundedButton(
                                                  title: 'Learn More',
                                                  colour: Colors.black12,
                                                  onPressed: () async {},
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 5),
                                  decoration: BoxDecoration(
                                      color: const Color(0xff04b8fc),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20.0),
                                          topRight: Radius.circular(20.0),
                                          bottomLeft: Radius.circular(20.0),
                                          bottomRight: Radius.circular(20))),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, right: 8, top: 8),
                                    child: Center(
                                      child: Column(
                                        //mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(top: 8),
//                                          decoration: BoxDecoration(
//                                              border: Border.all(
//                                                  color: Colors.blue,
//                                                  width: 1,
//                                                  style: BorderStyle.solid)),
                                            child: Text(
                                                "Basic Skills for over 12 languages",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700)),
                                          ),
                                          Card(
                                            elevation: 5,
                                            child: Container(
                                              height: widthScreen / 3,
                                              width: widthScreen / 2 + 50,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                //boxShadow: [BoxShadow(color: Colors.black26, offset: Offset(1,0),blurRadius: 5)],
                                              ),
                                              child: CircleAvatar(
                                                backgroundImage: AssetImage(
                                                    'images/team.png'),
                                                child: null,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 8),
//                                          decoration: BoxDecoration(
//                                              border: Border.all(
//                                                  color: Colors.blue,
//                                                  width: 1,
//                                                  style: BorderStyle.solid)),
                                            child: Text(
                                              "6 WEEKS CLASSES",
                                              style: TextStyle(
                                                  color: Colors.yellow),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 8),
//                                          decoration: BoxDecoration(
//                                              border: Border.all(
//                                                  color: Colors.blue,
//                                                  width: 1,
//                                                  style: BorderStyle.solid)),
                                            //height: widthScreen / 7+80,
                                            width: widthScreen / 2 + 50,
                                            //color: Colors.yellow,
                                            child: Text(
                                              "Mr John is the way fdnvbfkbjsdnvnvfnvnnnvjnfvjewojjksdna fnasdnfj ",
                                              softWrap: true,
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 8, bottom: 8),
//padding: EdgeInsets.only(bottom: 10),
//                                          decoration: BoxDecoration(
//                                              border: Border.all(
//                                                  color: Colors.blue,
//                                                  width: 1,
//                                                  style: BorderStyle.solid)),
                                            //height: widthScreen / 7+80,
                                            width: widthScreen / 2 + 50,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                RoundedButton(
                                                  title: 'Learn More',
                                                  colour: Colors.black12,
                                                  onPressed: () async {},
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 20),
                          child: Container(
                            height: 10,
                            width: widthScreen,
                            decoration: BoxDecoration(
                                border: Border(
                              top: BorderSide(
                                //                   <--- left side
                                color: Colors.white,
                                width: 3.0,
                              ),
                            )),
                            child: null,
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Why Learn With Us ?',
                                  style: TextStyle(fontWeight: FontWeight.w700,fontSize: 22),
                                )
                              ],
                            ),
                            Container(
                              width: widthScreen ,
                              height: 10,
                              child:null,
                            ),
                            Center(
                              child: Padding(padding: EdgeInsets.only(left: 20,right: 20),
                              child:  Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        width: widthScreen-56,
                                        padding: EdgeInsets.only(bottom: 10),
                                        alignment: Alignment.center,

                                        child: ListTile(
                                          leading: Checkbox(
                                              value: true, onChanged: null),
                                          title: Text(
                                              'Established for Over 40 years',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700)),
                                          subtitle: Container(

                                              child: Text(
                                                  'Cubitar djsdbdsvbdsbvhbjevbibbvsvjncjxvnrnechvih',
                                                  softWrap: true,
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.w300))),
                                        ),
                                      ),Container(
                                        width: widthScreen-56,
                                        padding: EdgeInsets.only(bottom: 10),
                                        child: ListTile(
                                          leading: Checkbox(
                                              value: true, onChanged: null),
                                          title: Text(
                                              'Established for Over 40 years',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700)),
                                          subtitle: Container(

                                              child: Text(
                                                  'Cubitar djsdbdsvbdsbvhbjevbibbvsvjncjxvnrnechvih',
                                                  softWrap: true,
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.w300))),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 20),
                          child: Container(
                            height: 10,
                            width: widthScreen,
                            decoration: BoxDecoration(
                                border: Border(
                              top: BorderSide(
                                //                   <--- left side
                                color: Colors.white,
                                width: 3.0,
                              ),
                            )),
                            child: null,
                          ),
                        ),
                        Text("Our Partner",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w700)),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 8, top: 8),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Aboutus()),
                                      );
                                    },
                                    child: Column(
                                      children: <Widget>[
                                        Card(
                                          elevation: 5,
                                          child: Container(
                                            height: widthScreen / 6,
                                            width: widthScreen / 6,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              //boxShadow: [BoxShadow(color: Colors.black26, offset: Offset(1,0),blurRadius: 5)],
                                            ),
                                            child: CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  'images/partner.png'),
                                              child: null,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 8),
//                                          decoration: BoxDecoration(
//                                              border: Border.all(
//                                                  color: Colors.blue,
//                                                  width: 1,
//                                                  style: BorderStyle.solid)),
                                          child: Text("Mr John"),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 8, top: 8),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Aboutus()),
                                      );
                                    },
                                    child: Column(
                                      children: <Widget>[
                                        Card(
                                          elevation: 5,
                                          child: Container(
                                            height: widthScreen / 6,
                                            width: widthScreen / 6,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              //boxShadow: [BoxShadow(color: Colors.black26, offset: Offset(1,0),blurRadius: 5)],
                                            ),
                                            child: CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  'images/partner.png'),
                                              child: null,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 8),
//                                          decoration: BoxDecoration(
//                                              border: Border.all(
//                                                  color: Colors.blue,
//                                                  width: 1,
//                                                  style: BorderStyle.solid)),
                                          child: Text("Alibaba"),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 8, top: 8),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Aboutus()),
                                      );
                                    },
                                    child: Column(
                                      children: <Widget>[
                                        Card(
                                          elevation: 5,
                                          child: Container(
                                            height: widthScreen / 6,
                                            width: widthScreen / 6,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              //boxShadow: [BoxShadow(color: Colors.black26, offset: Offset(1,0),blurRadius: 5)],
                                            ),
                                            child: CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  'images/partner.png'),
                                              child: null,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 8),
//                                          decoration: BoxDecoration(
//                                              border: Border.all(
//                                                  color: Colors.blue,
//                                                  width: 1,
//                                                  style: BorderStyle.solid)),
                                          child: Text("EddisPizza"),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 80,
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'go to connexion',
        child: Icon(Icons.account_circle),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
