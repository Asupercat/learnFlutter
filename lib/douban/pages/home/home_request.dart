import 'package:demo/service/config.dart';
import 'package:demo/service/http_request.dart';
import 'package:demo/douban/model/home_model.dart';

class HomeRequest{

  static Future<List<MovieItem>> reqestMovieList(int start) async{
    final movieUrl = "${HttpConfig.baseURL}/movie/top250?start=$start&count=${HomeConfig.movieCount}";
//  final movieUrl = "https://douban-api-git-master.zce.now.sh/v2/movie/top250?start=0&count=20";
    print(movieUrl);
    final result = await HttpRequest.request(movieUrl);
    final subjects = result["subjects"];

    List<MovieItem> movies = [];
//    map 转 model
    for (var sub in subjects) {
      movies.add(MovieItem.fromMap(sub));
    }

    print(movies);
    return movies;
  }
  
}