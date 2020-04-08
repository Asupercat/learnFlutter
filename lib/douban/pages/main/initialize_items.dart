import 'package:demo/douban/pages/group/group.dart';
import 'package:demo/douban/pages/home/home.dart';
import 'package:demo/douban/pages/main/bottom_bar_item.dart';
import 'package:demo/douban/pages/mall/mall.dart';
import 'package:demo/douban/pages/profile/profile.dart';
import 'package:demo/douban/pages/subject/subject.dart';
import 'package:flutter/material.dart';

List<DBBottomBarItem> items = [
  DBBottomBarItem("home", "首页"),
  DBBottomBarItem("subject", "书影音"),
  DBBottomBarItem("group", "小组"),
  DBBottomBarItem("mall", "市集"),
  DBBottomBarItem("profile", "我的"),
];

List<Widget> pages = [
  DBHomePage(),
  DBSubjectPage(),
  DBGropPage(),
  DBMallPage(),
  DBProfilePage(),
];