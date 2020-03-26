
//生命周期的作用
//1.初始化数据
//2.发送网络请求
//3.监听事件
//4.内存管理 -- 定时器 手动销毁

//Flutter中只需要监听Widget的生命周期

//StatelessWidget生命周期
//1. 构造函数被调用 -> 2. build方法被调用

//class  extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Container();
//  }
//}




// StatefulWidget生命周期
//  1. StatefulWidget构造函数 ->  2. createState() ->  3. _State构造函数 -> 4. initState(必须调用Super) -> 5. build -> 6. dispose(必须调用Super)

// setState 会标记 重新build

//setState(() {
//_counter--;
//});




//class  extends StatefulWidget {
//  @override
//  _State createState() => _State();
//}
//
//class _State extends State<> {
//  @override
//  Widget build(BuildContext context) {
//    return Container();
//  }
//}


