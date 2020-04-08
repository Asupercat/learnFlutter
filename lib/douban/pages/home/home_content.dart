import 'package:demo/douban/model/home_model.dart';
import 'package:demo/douban/pages/home/home_movie_item.dart';
import 'package:demo/douban/pages/home/home_request.dart';
import 'package:flutter/material.dart';

class DBHomeContent extends StatefulWidget {
  @override
  _DBHomeContentState createState() => _DBHomeContentState();
}

class _DBHomeContentState extends State<DBHomeContent> {
  final List<MovieItem> movies = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //发送网络请求
    HomeRequest.reqestMovieList(0).then((res) {
      setState(() {
        movies.addAll(res);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: movies.length,
        itemBuilder: (ctx, index) {
          return DBHomeMovieItem(movies[index]);
        });
  }
}
