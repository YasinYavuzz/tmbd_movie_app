
import 'package:flutter/cupertino.dart';
import 'package:tmdb_movie_app/model/home_page_model/popular_model.dart';
import 'package:tmdb_movie_app/services/tmdb_service.dart';

class PopularProvider extends ChangeNotifier{
  // int? index;
  PopularModel? popularModel;
  getPopularData() async{
    popularModel = await getPopularModel();
    // print(popularModel!.results!.length);
    notifyListeners();
  }
}
