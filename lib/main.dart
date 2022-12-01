import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tmdb_movie_app/controller/home_page_controller/now_playing_provider.dart';
import 'package:tmdb_movie_app/controller/home_page_controller/popular_provider.dart';
import 'package:tmdb_movie_app/controller/home_page_controller/top_rated_provider.dart';
import 'package:tmdb_movie_app/controller/home_page_controller/up_coming_proivder.dart';
import 'package:tmdb_movie_app/controller/main_controller/change_page.dart';
import 'package:tmdb_movie_app/controller/on_board_page_controller/movie_detail_provider.dart';
import 'package:tmdb_movie_app/controller/show_page_controller/show_page_acting_provider.dart';
import 'package:tmdb_movie_app/model/on_board_page_model/movie_detail_model.dart';
import 'package:tmdb_movie_app/view/pages/on_board_page.dart';
import 'view/pages/home_page.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (BuildContext , Orientation , ScreenType ) { 
        return MultiProvider(
          providers: [
            ChangeNotifierProvider<TopRatedProvider>(create: (context) => TopRatedProvider()),
            ChangeNotifierProvider<PopularProvider>(create: (context) => PopularProvider()),
            ChangeNotifierProvider<NowPlayingProvider>(create: (context) => NowPlayingProvider()),
            ChangeNotifierProvider<UpComingProvider>(create: (context) => UpComingProvider()),
            ChangeNotifierProvider<ChangePageIndexProvider>(create: (context) => ChangePageIndexProvider()),
            ChangeNotifierProvider<MovieDetailProvider>(create: (context) => MovieDetailProvider()),
            ChangeNotifierProvider<ShowPageActingProvider>(create: (context) => ShowPageActingProvider())
          ],
          child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomePage(),
              ),
        );
      },
      
    );
  }
}