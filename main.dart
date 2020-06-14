import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Navigationbar(),
    ));

class Navigationbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Navigation Drawer'),
          backgroundColor: Colors.deepOrangeAccent[400]),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                        radius: 43,
                        backgroundColor: Colors.deepOrangeAccent,
                        backgroundImage: AssetImage('assests/image.jpg')),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'John Deo',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Text(
                      'John05@gmail.com',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    )
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: <Color>[
                Colors.deepOrangeAccent,
                Colors.deepOrange
              ])),
            ),
            Container(
              height: MediaQuery.of(context).size.height-200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      CustomListTile(Icons.person, 'Profile', () {}),
                      CustomListTile(Icons.check_circle, 'Completed Orders', () {}),
                      CustomListTile(Icons.settings, 'Settings', () {}),
                      CustomListTile(Icons.account_circle, 'Support Us', () {}),
                      CustomListTile(Icons.assignment_return, 'Log Out', () {}),
                    ],
                  ),
                  Container(
                    child: Image.asset(
                      'assests/img.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  IconData icon;
  String text;
  Function onTap;
  CustomListTile(this.icon, this.text, this.onTap);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 1, 8.0, 1),
      child: Container(
        decoration: BoxDecoration(
            border:
                Border(bottom: BorderSide(color: Colors.grey[200], width: 3))),
        child: InkWell(
          splashColor: Colors.deepOrangeAccent,
          child: Container(
            height: 40,
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 10,
                ),
                Icon(
                  icon,
                  size: 30,
                  color: Colors.deepOrangeAccent,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}
