import 'package:flutter/material.dart';

class DBBottomBarItem extends BottomNavigationBarItem {
  DBBottomBarItem(String iconName , String title) : super (
    title : Text(title),
    icon:  Image.asset("assets/images/tabbar/$iconName.png", width: 30 ,gaplessPlayback: true,),
    activeIcon: Image.asset("assets/images/tabbar/${iconName}_active.png", width: 30,gaplessPlayback: true,),
  );
}