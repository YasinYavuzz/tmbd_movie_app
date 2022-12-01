
import 'package:flutter/cupertino.dart';
import 'package:tmdb_movie_app/model/home_page_model/now_playing_model.dart';
import 'package:tmdb_movie_app/model/home_page_model/popular_model.dart';
import 'package:tmdb_movie_app/model/home_page_model/up_coming_model.dart';
import 'package:tmdb_movie_app/services/tmdb_service.dart';

class UpComingProvider extends ChangeNotifier{
  // int? index;
  UpComingModel? upComingModel;
  getUpComingData() async{
    upComingModel = await getUpComingModel();
    // print(popularModel!.results!.length);
    notifyListeners();
  }
}