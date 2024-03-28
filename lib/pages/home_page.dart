import 'package:flutter/material.dart';
import 'package:truecaller/pages/phonepage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _selectedIndex = 0;
  final List<Widget> _widgetOptions = const <Widget>[
    PhonePage(),
    Text(
      "index 0:Home",
    ),
    Text(
      "index 1:business",
    ),
    Text(
      "index 3:school",
    ),
    Text(
      "index 4:school",
    )
  ];
  void changeIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Demo Home Page"),
      ),
      body:SafeArea(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: changeIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                // color: Colors.white,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.business,
                // color: Colors.white,
              ),
              label: 'Business'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.school,
                // color: Colors.white,
              ),
              label: 'school'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.school,
                // color: Colors.white,
              ),
              label: 'school'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.school,
                // color: Colors.white,
              ),
              label: 'school'),
        ],
      ),
    );
  }
}
