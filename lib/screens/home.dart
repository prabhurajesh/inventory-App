import 'package:flutter/material.dart';
import 'package:login/components/drawer.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  // String mobile = "";
  bool search = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: AppDrawer("Dashboard"),
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
                icon: new Icon(Icons.menu),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
        ),
        automaticallyImplyLeading: false,
        title: Text(
          "Inventory App Stage 2 ",
          // style: TextStyle(fontSize: 30, color: Colors.white),
          //style: Theme.of(context).textTheme.display1,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white, size: 30),
            onPressed: () {},
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/addingNewProduct');
        },
        child: Icon(Icons.add, color: Colors.white),
        backgroundColor: Color.fromRGBO(255, 0, 123, 1),
      ),
      body: Center(
          child: Text(
        "Get Started By  Adding a Product ):",
        style: TextStyle(color: Colors.grey[700]),
      )),
    );
  }
}
