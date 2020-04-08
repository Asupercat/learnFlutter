import 'package:demo/douban/pages/main/initialize_items.dart';
import 'package:flutter/material.dart';

import 'bottom_bar_item.dart';

class DBMainPage extends StatefulWidget {
  @override
  _DBMainPageState createState() => _DBMainPageState();
}

class _DBMainPageState extends State<DBMainPage> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 12,
//        selectedItemColor: ,
//      unselectedItemColor: ,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: items,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),);
  }

}

