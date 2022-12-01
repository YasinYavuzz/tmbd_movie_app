
import 'package:flutter/cupertino.dart';
import 'package:tmdb_movie_app/model/home_page_model/top_rated_model.dart';
import 'package:tmdb_movie_app/services/tmdb_service.dart';

class TopRatedProvider extends ChangeNotifier{

  double? index;
  TopRatedModel? topRatedModel;
  getTopRatedData() async{
    topRatedModel = await getTopRatedModel();
    // print(topRatedModel!.results![0].backdropPath.toString());
    notifyListeners();
  }

  getIndex(index2){
    index = index2;
    notifyListeners();
  }
    
}




