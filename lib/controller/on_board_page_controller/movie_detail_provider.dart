
import 'package:flutter/cupertino.dart';
import 'package:tmdb_movie_app/model/on_board_page_model/movie_detail_model.dart';
import 'package:tmdb_movie_app/services/tmdb_service.dart';

class MovieDetailProvider extends ChangeNotifier{
  //dynamic movie_id;
  MovieDetailModel? movieDetailModel;
  getMovieDetailData({required dynamic movie_id}) async{
    movieDetailModel = await getMovieDetailModel(movie_id: movie_id);
    // print(popularModel!.results!.length);
    notifyListeners();
  }

  

}
