import 'package:espeakings/menu/aboutus.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class CustomDrawer extends StatelessWidget {

  _buildDrawerOption(Icon icon, String title, Function onTap) {
    return ListTile(
      leading: icon,
      title: Text(
        title,
        style: TextStyle(
          fontSize: 20.0,
        ),
      ),
      onTap: onTap,
    );
  }

  //var id,email,role,username;


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image(
                height: 200.0,
                width: double.infinity,
                image: AssetImage(
                  'images/contact.png',
                ),
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 20.0,
                left: 20.0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 3.0,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      child: ClipOval(
                        child: Image(
                          image: AssetImage(
                            'images/team.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
          SizedBox(width: 6.0),
          Container(
            child: Text(
              'ESA',softWrap: true, overflow: TextOverflow.ellipsis,

              style: TextStyle(
                color: Colors.green,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
          ),
          Flexible(
            child: Container(
              height: 800,
              child: ListView(
                children: <Widget>[
                  _buildDrawerOption(
                    Icon(Icons.dashboard),
                    'Home',
                        () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => MyHomePage(),
                      ),
                    ),
                  ),
                  _buildDrawerOption(Icon(Icons.school), 'Course', () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => Aboutus(),
                      ),
                    );
                  }),

                  _buildDrawerOption(
                    Icon(Icons.account_circle),
                    'Our mission',
                        () =>  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => Aboutus(),
                      ),
                    ),//fin signOutfromconsant()
                  ),
                  _buildDrawerOption(Icon(Icons.create), 'Contact', () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => Aboutus(),
                      ),
                    );

                  }),




                ],
              ),
            ),
          ),


        ],
      ),
    );
  }
//  functionontap(BuildContext context){
//
//    Navigator.pushReplacement(
//      context,
//      MaterialPageRoute(
//        builder: (_) => Aboutus(),
//      ),
//    );
//  }



}
