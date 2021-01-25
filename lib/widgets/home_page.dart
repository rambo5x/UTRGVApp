import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'IEEE UTRGV';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/IEEEUTRGV.png',
              fit: BoxFit.contain,
              height: 55,
            ),
          ],
        ),
      ),
      body: Center(child: Text('My Page!')),
      drawer: Container(
        width: 200,

        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('More'),
                decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                ),
              ),
              ListTile(
                title: Text('Events'),
                // trailing: Icon(Icons.more_vert) ,
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Projects'),
                onTap: () {
                  //final snackBar = SnackBar(content: Text("Mission statement"));

                  // Scaffold.of(context).showSnackBar(snackBar);
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('About'),
                trailing: Icon(Icons.more_vert),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Contact Us'),
                trailing: IconButton(
                  icon: Icon(Icons.more_vert),
                  color: Colors.grey,
                ),
                onTap: () {
                  child:
                  ListTile(
                    title: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Text('Email'),
                        dense: true,
                      ),
                    ),
                  );
                  // Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
