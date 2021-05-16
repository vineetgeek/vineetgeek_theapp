import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wordpress_flutter/tabs/about.dart';

import '../config.dart';
import '../services/theme_changer.dart';
import '../tabs/categories_tab.dart';
import '../tabs/home_tab.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);
    return Scaffold(
      // resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text(TITLE),
        titleSpacing: 8.0,
        actions: <Widget>[
          GestureDetector(
            child: Icon(Icons.lightbulb_outline),
            onTap: themeChanger.toggle,
          )
        ],
      ),
      body: IndexedStack(
        index: currentIndex,
        children: <Widget>[HomeTab(), CategoriesTab(), About()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('Categories'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('About Me'),
          ),
        ],
      ),
    );
  }
}
