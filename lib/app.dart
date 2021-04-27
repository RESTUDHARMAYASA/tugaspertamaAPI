import 'package:flutter/material.dart';
import 'form_add_screen.dart';
import 'home_screen.dart';

GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[900],
        accentColor: Colors.cyan[600],
      ),
      home: Scaffold(
        key: _scaffoldState,
        appBar: AppBar(
          title: Text(
            "DAFTRA PENGURUS KOPERASI",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          actions: <Widget>[
            GestureDetector(
              onTap: () async {
                var result = await Navigator.push(
                  _scaffoldState.currentContext,
                  MaterialPageRoute(builder: (BuildContext context) {
                    return FormAddScreen();
                  }),
                );
                if (result != null) {
                  setState(() {});
                }
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Icon(
                  Icons.person_add,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        body: HomeScreen(),
      ),
    );
  }
}
