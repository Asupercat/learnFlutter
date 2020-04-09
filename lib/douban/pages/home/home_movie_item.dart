import 'package:demo/douban/model/home_model.dart';
import 'package:demo/douban/widgets/dash_line.dart';
import 'package:demo/douban/widgets/star_rating.dart';
import 'package:flutter/material.dart';

class DBHomeMovieItem extends StatefulWidget {
  final MovieItem movie;
  DBHomeMovieItem(this.movie);

  @override
  _DBHomeMovieItemState createState() => _DBHomeMovieItemState();
}

class _DBHomeMovieItemState extends State<DBHomeMovieItem> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(width: 8, color: Color(0xFFEEEEEE))
          )),

      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          buildHeader(),
          SizedBox(height: 8),
          buildContent(),
          SizedBox(height: 8),
          buildFooter()
        ])
      ,);
  }

  //  排名
  Widget buildHeader() {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: Color.fromARGB(255, 238, 205, 144)
      ),
      child: Text("No.${widget.movie.rank}",
          style: TextStyle(fontSize: 13)),
    );
  }

  Widget buildContent() {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          buildContentImage(),
          SizedBox(width: 8),
          Expanded(child:
          IntrinsicHeight(
            child: Row(
              children: <Widget>[
                buildContentInfo(),
                buildContentDashLine(),
                buildContentLike(),
              ],
            ),
          ),
          )
        ]);
  }

  //内容图片
  Widget buildContentImage() {
//    print(widget.movie.imageURL);
    return ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(widget.movie.imageURL, height: 150,));
  }

  //内容信息
  Widget buildContentInfo() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          buildContentInfoTitle(),
          SizedBox(height: 6),
          buildContentInfoRate(),
          SizedBox(height: 6),
          buildContentInfoDesc()
        ],),
    );
  }

  Widget buildContentInfoTitle() {
    return Text.rich(TextSpan(
      children: [
        WidgetSpan(child: Icon(Icons.play_circle_outline, color: Colors.redAccent, size: 24,)),
        TextSpan(text: widget.movie.title , style:  TextStyle(fontSize: 20 , fontWeight: FontWeight.bold)),
        TextSpan(text: "(${widget.movie.playDate})" , style:  TextStyle(fontSize: 16 , color: Colors.grey)),
      ]
    ));
  }

  Widget buildContentInfoRate() {
    return Row(
      children: <Widget>[
        DBStarRating(rating: widget.movie.rating, size: 20,),
        Text("${widget.movie.rating}")
      ],
    );
  }

  Widget buildContentInfoDesc() {
    //字符串拼接
    final genString = widget.movie.genres.join(" ");
    final direString = widget.movie.director.name;
    final actorString = widget.movie.casts.map((item) => item.name).toList().join(" ");
    return Text("$genString / $direString / $actorString ",maxLines: 2, overflow: TextOverflow.ellipsis,);
  }

  //虚线
  Widget buildContentDashLine() {
    return Container(
        height: 100,
        child: DBDashLine(axis: Axis.vertical , dashHeight: 6 , count: 10,));
  }

  Widget buildContentLike() {
    return Container(height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset("assets/images/home/wish.png" , width: 40,),
          Text("想看")
        ],
      ),
    );
  }

  Widget buildFooter() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(8),
      child:Text(widget.movie.originalTitle, style: TextStyle(fontSize: 16),),
      height: 35,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Color(0xffe2e2e2)),);
  }
}
