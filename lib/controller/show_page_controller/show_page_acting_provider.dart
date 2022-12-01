
import 'package:flutter/cupertino.dart';
import 'package:tmdb_movie_app/model/show_page_model/show_page_acting_model.dart';
import 'package:tmdb_movie_app/services/tmdb_service.dart';

class ShowPageActingProvider extends ChangeNotifier{
  //dynamic movie_id;
  ShowPageActingModel? showPageActingModel;
  getShowPageActingData({required dynamic movie_id}) async{
    showPageActingModel = await getShowPageActingModel(movie_id: movie_id);
    // print(popularModel!.results!.length);
    notifyListeners();
  }
}
