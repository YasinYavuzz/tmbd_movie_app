
import 'package:flutter/cupertino.dart';

import 'package:flutter/cupertino.dart';
import 'package:tmdb_movie_app/model/search_page_model/search_page_model.dart';
import 'package:tmdb_movie_app/model/show_page_model/show_page_acting_model.dart';
import 'package:tmdb_movie_app/services/tmdb_service.dart';

class SearchPageProvider extends ChangeNotifier{
  //dynamic movie_id;

  SearchPageModel? searchPageModel;
  String query = "Yasin";

    getSearchData() async{
      searchPageModel = await getSearchPageModel(query: query);
      notifyListeners();
    }

    getQuery({required String query}){
      this.query = query; 
      getSearchData();
      notifyListeners();
    }

}
