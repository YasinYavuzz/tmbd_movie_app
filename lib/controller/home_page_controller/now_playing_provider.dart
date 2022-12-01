
import 'package:flutter/cupertino.dart';
import 'package:tmdb_movie_app/model/home_page_model/now_playing_model.dart';
import 'package:tmdb_movie_app/model/home_page_model/popular_model.dart';
import 'package:tmdb_movie_app/services/tmdb_service.dart';

class NowPlayingProvider extends ChangeNotifier{
  // int? index;
  NowPlayingModel? nowPlayingModel;
  getNowPlayingData() async{
    nowPlayingModel = await getNowPlayingModel();
    // print(popularModel!.results!.length);
    notifyListeners();
  }
}
