import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MYApp());

class MYApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
//        debugShowCheckedModeBanner: false,
        home: HomePage()
    );
  }

}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("基础Widget"),
      ),
      body: HomeContent(),

    );
  }
}

//1.Widget需要依赖State中的状态
//2.在Flutter运行中 Widget是不断创建销毁的 当状态改变时不希望重新生成一个新的State

//Widget 不加 _ 暴露给别人
class HomeContent extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

//内部有Widget属性 指向⬆️
class _HomePageState extends State<HomeContent> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/WechatIMG13276.jpeg");
//    return Image(
//      //1.在Flutter项目中创建文件夹,存储图片
//      //2.在pubspec.yaml进行配置
//      //3.使用图片
//        image: AssetImage("assets/images/WechatIMG13276.jpeg")
//    );
  }

}

//加载网络图片
class ImageDemo01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Image.network("https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg")
    return Image(
      image: NetworkImage(
          "https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg"),
      width: 300,
      height: 200,
      fit: BoxFit.fitWidth,
//      alignment: Alignment.bottomRight,
      alignment: Alignment(0, 2),
      // -1 到 1
      color: Colors.cyan,
      //颜色混入
      colorBlendMode: BlendMode.colorDodge,
    );
  }
}
