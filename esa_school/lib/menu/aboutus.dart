
import 'package:flutter/material.dart';
import 'package:espeakings/main.dart';

import '../variable.dart';

class Aboutus extends StatefulWidget {

  @override
  Aboutus_State createState() => Aboutus_State();
}

class Aboutus_State extends State<Aboutus> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    screenDimen=screenSize;
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
          title: Column(
            children: <Widget>[
              SizedBox(
                height: 15,
              ),
              Row(
                children: <Widget>[
                  IconButton(icon: Icon(Icons.account_circle),  onPressed: (){
                    setState(() {
//DisplayWeb
                      //User user=new User(profileImageUrl: "images/gtucLogo.png",backgroundImageUrl: "images/gtucLogo.png",username: "username",email: "emai",role: "role");
                      //User user=new User(profileImageUrl: profileImageUrl,backgroundImageUrl: backgroundImageUrl,username: username,email: email,role: role);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyHomePage()),
                      );
                    });


                  }),
                  Text("ESA")
                ],
              ),
            ],
          )),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[

                Container(
                  height: 5,
                  child:null,
                ),
                Text('A propos de notre formation en ligne')
              ],
            ),
          )
        ],
      ),
    );
  }
}