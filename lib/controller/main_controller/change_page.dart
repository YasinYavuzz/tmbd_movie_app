import 'package:flutter/cupertino.dart';
import 'package:tmdb_movie_app/controller/home_page_controller/top_rated_provider.dart';
import 'package:tmdb_movie_app/model/home_page_model/now_playing_model.dart';
import 'package:tmdb_movie_app/model/home_page_model/popular_model.dart';
import 'package:tmdb_movie_app/model/home_page_model/top_rated_model.dart';
import 'package:tmdb_movie_app/model/home_page_model/up_coming_model.dart';
import 'package:tmdb_movie_app/services/tmdb_service.dart';
import 'package:tmdb_movie_app/view/pages/best_movies.dart';
import 'package:tmdb_movie_app/view/pages/home_page.dart';
import 'package:tmdb_movie_app/view/pages/now_playing_movies.dart';
import 'package:tmdb_movie_app/view/pages/popular_movies.dart';
import 'package:tmdb_movie_app/view/pages/up_coming_movies.dart';

class ChangePageIndexProvider extends ChangeNotifier {
  int home_index = 0;
  int page = 1;
  bool? isShimmerController;
  
  TopRatedModel? topRatedModel;
  PopularModel? popularModel;
  NowPlayingModel? nowPlayingModel;
  UpComingModel? upComingModel;


  getHomeChangePageIndex(index) {
    home_index = index;
    notifyListeners();
  }

  getPageReset(reset) {
    page = reset;
    notifyListeners();
  }

  getHomeChangePage() {
    switch (home_index) {
      case 0:
        return const HomePage();
      case 1:
        return const BestMovies();
      case 2:
        return const PopularMovies();
      case 3:
        return const NowPlaying();
      case 4:
        return const UpComing();
    }
  }

  // getShimmerPage(bool shimmerController) async{
  //   await Duration(seconds: 1);
  //   isShimmerController = !shimmerController;
  //   notifyListeners();
  // }

   // Top Rated
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
  


  // Popular
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

  // Now Playing
  getNowPlayingPageDataWithPage() async{
    nowPlayingModel = await getNowPlayingModelWithPage(page: page);
    notifyListeners();
  }

  getNowPlayingPageIncrement(){
    if (this.page != 9 && this.page <= 9) {
      this.page = page + 1;
      getNowPlayingPageDataWithPage();
      notifyListeners();
    }
    else if(this.page == 9){
      this.page = 9;
      getNowPlayingPageDataWithPage();
      notifyListeners();
    }
  }

  getNowPlayingPageDecrement(){
    if (this.page != 1 && this.page > 1){
      this.page = page - 1;
      getNowPlayingPageDataWithPage();
      notifyListeners();
    }else if(this.page == 1){
      this.page = 1;
      getNowPlayingPageDataWithPage();
      notifyListeners();
    }
  }

  // Up Coming

  getUpComingPageDataWithPage() async{
    upComingModel = await getUpComingModelWithPage(page: page);
    notifyListeners();
  }

  getUpComingPageIncrement(){
    if (this.page != 10 && this.page <= 10) {
      this.page = page + 1;
      getUpComingPageDataWithPage();
      notifyListeners();
    }
    else if(this.page == 10){
      this.page = 10;
      getUpComingPageDataWithPage();
      notifyListeners();
    }
  }

  getUpComingPageDecrement(){
    if (this.page != 1 && this.page > 1){
      this.page = page - 1;
      getUpComingPageDataWithPage();
      notifyListeners();
    }else if(this.page == 1){
      this.page = 1;
      getUpComingPageDataWithPage();
      notifyListeners();
    }
  }
  

}
