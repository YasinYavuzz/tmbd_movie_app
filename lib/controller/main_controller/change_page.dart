import 'package:flutter/cupertino.dart';
import 'package:tmdb_movie_app/controller/home_page_controller/top_rated_provider.dart';
import 'package:tmdb_movie_app/services/tmdb_service.dart';
import 'package:tmdb_movie_app/view/pages/best_movies.dart';
import 'package:tmdb_movie_app/view/pages/home_page.dart';

class ChangePageIndexProvider extends ChangeNotifier {
  int home_index = 0;
  int page = 2;
  
  TopRatedProvider topRatedProvider = TopRatedProvider();

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


  // getBestPageIncrement(){
  //   page++;
  //   print(page);
  //   topRatedProvider.getTopRatedData();
  //   notifyListeners();
    
  // }

  // getBestChangeDecrement() async{
  //   if (page != 1 && page > 1) {
  //     page--;
  //     //getBestPageData();
  //   }
  //   else if(page == 1){
  //     page = 1;
  //   }
  //   print(page);
  //   notifyListeners();
  // }

  

  

}
