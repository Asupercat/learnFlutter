

import 'package:demo/day09/model/user_info.dart';
import 'package:demo/day09/viewmodel/user_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'counter_view_model.dart';



final userIndo = UserInfo("lemon", 99, "nobody");

List<SingleChildWidget> providers = [
  ChangeNotifierProvider(create: (ctx) => XYCounterViewModel()),
  ChangeNotifierProvider(create: (ctx) => XYUserViewModel(userIndo)),
];