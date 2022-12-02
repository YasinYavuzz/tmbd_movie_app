import 'package:flutter/cupertino.dart';
import 'package:tmdb_movie_app/controller/home_page_controller/top_rated_provider.dart';
import 'package:tmdb_movie_app/model/home_page_model/popular_model.dart';
import 'package:tmdb_movie_app/model/home_page_model/top_rated_model.dart';
import 'package:tmdb_movie_app/services/tmdb_service.dart';
import 'package:tmdb_movie_app/view/pages/best_movies.dart';
import 'package:tmdb_movie_app/view/pages/home_page.dart';

class ChangePageIndexProvider extends ChangeNotifier {
  int home_index = 0;
  int page = 1;
  bool? isShimmerController;
  
  TopRatedModel? topRatedModel;
  PopularModel? popularModel;


  getHomeChangePageIndex(index) {
    home_index = index;
    notifyListeners();
  }

  getHomeChangePage() {
    switch (home_index) {
      case 0:
        return const HomePage();
      case 1:
        return const BestMovies();
    }
  }

  // getShimmerPage(bool shimmerController) async{
  //   await Duration(seconds: 1);
  //   isShimmerController = !shimmerController;
  //   notifyListeners();
  // }

  getTopRatedDataWithPage() async{
    topRatedModel = await getTopRatedModelWithPage(page: page);
    notifyListeners();
  }

  getTopRatedPageIncrement(){
    if (this.page != 10 && this.page <= 10) {
      this.page = page + 1;
      getTopRatedDataWithPage();
      notifyListeners();
    }
    else if(this.page == 10){
      this.page = 10;
      getTopRatedDataWithPage();
      notifyListeners();
    }
  }

  getTopRatedPageDecrement(){
    if (this.page != 1 && this.page > 1){
      this.page = page - 1;
      getTopRatedDataWithPage();
      notifyListeners();
    }else if(this.page == 1){
      this.page = 1;
      getTopRatedDataWithPage();
      notifyListeners();
    }
  }
  

  getPopularPageDataWithPage() async{
    popularModel = await getPopularModelWithPage(page: page);
    notifyListeners();
  }

  getPopularPageIncrement(){
    if (this.page != 10 && this.page <= 10) {
      this.page = page + 1;
      getPopularPageDataWithPage();
      notifyListeners();
    }
    else if(this.page == 10){
      this.page = 10;
      getPopularPageDataWithPage();
      notifyListeners();
    }
  }

  getPopularPageDecrement(){
    if (this.page != 1 && this.page > 1){
      this.page = page - 1;
      getPopularPageDataWithPage();
      notifyListeners();
    }else if(this.page == 1){
      this.page = 1;
      getPopularPageDataWithPage();
      notifyListeners();
    }
  }
  

  

}
