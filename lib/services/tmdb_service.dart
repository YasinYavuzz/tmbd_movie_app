
import 'package:dio/dio.dart';
import 'package:tmdb_movie_app/controller/main_controller/change_page.dart';
import 'package:tmdb_movie_app/controller/on_board_page_controller/movie_detail_provider.dart';
import 'package:tmdb_movie_app/model/home_page_model/now_playing_model.dart';
import 'package:tmdb_movie_app/model/home_page_model/popular_model.dart';
import 'package:tmdb_movie_app/model/home_page_model/top_rated_model.dart';
import 'package:tmdb_movie_app/model/home_page_model/up_coming_model.dart';
import 'package:tmdb_movie_app/model/on_board_page_model/movie_detail_model.dart';
import 'package:tmdb_movie_app/model/search_page_model/search_page_model.dart';
import 'package:tmdb_movie_app/model/show_page_model/show_page_acting_model.dart';

ChangePageIndexProvider changePageIndexProvider = ChangePageIndexProvider();
MovieDetailProvider movieDetailProvider = MovieDetailProvider();

String api_key = '51323e803b6016405fd167d04ea5097c';
String language = 'en-US';
dynamic page = changePageIndexProvider.page;
// double movie_id = movieDetailProvider.movie_id;

var parameters = {
  'api_key' : api_key,
  'language' : language,
  'page' : page
};

final Dio _dio = Dio(BaseOptions(baseUrl: "https://api.themoviedb.org/3/movie/"));
final Dio _dio2 = Dio(BaseOptions(baseUrl: "https://api.themoviedb.org/3/search/"));

Future<TopRatedModel?> getTopRatedModel() async {
  try {
    TopRatedModel topRatedModel;
    final response = await _dio.get('top_rated',queryParameters: parameters);
    topRatedModel = TopRatedModel.fromJson(response.data);
    // print(response.data);
    return topRatedModel;
  } catch (e) {
    print(e);
  }
  return null;
}


Future<PopularModel?> getPopularModel() async {
  try {
    PopularModel popularModel;
    final response = await _dio.get('popular',queryParameters: parameters);
    popularModel = PopularModel.fromJson(response.data);
    print(response.data);
    return popularModel;
  } catch (e) {
    print(e);
  }
  return null;
}


Future<NowPlayingModel?> getNowPlayingModel() async {
  try {
    NowPlayingModel nowPlayingModel;
    final response = await _dio.get('now_playing',queryParameters: parameters);
    nowPlayingModel = NowPlayingModel.fromJson(response.data);
    print(response.data);
    return nowPlayingModel;
  } catch (e) {
    print(e);
  }
  return null;
}


Future<UpComingModel?> getUpComingModel() async {
  try {
    UpComingModel upComingModel;
    final response = await _dio.get('upcoming',queryParameters: parameters);
    upComingModel = UpComingModel.fromJson(response.data);
    print(response.data);
    return upComingModel;
  } catch (e) {
    print(e);
  }
  return null;
}

Future<MovieDetailModel?> getMovieDetailModel({required dynamic movie_id}) async {
  try {
    MovieDetailModel movieDetailModel;
    final response = await _dio.get('${movie_id.toString()}?api_key=51323e803b6016405fd167d04ea5097c&language=en-US',queryParameters: parameters);
    movieDetailModel = MovieDetailModel.fromJson(response.data);
    print(response.data);
    return movieDetailModel;
  } catch (e) {
    print(e);
  }
  return null;
}

Future<ShowPageActingModel?> getShowPageActingModel({required dynamic movie_id}) async {
  try {
    ShowPageActingModel showPageActingModel;
    final response = await _dio.get('${movie_id.toString()}/credits?api_key=51323e803b6016405fd167d04ea5097c&language=en-US',queryParameters: parameters);
    showPageActingModel = ShowPageActingModel.fromJson(response.data);
    print(response.data);
    return showPageActingModel;
  } catch (e) {
    print(e);
  }
  return null;
}

Future<SearchPageModel?> getSearchPageModel ({required String query}) async {
  try {
    SearchPageModel searchPageModel;
    final response = await _dio2.get('movie?api_key=51323e803b6016405fd167d04ea5097c&language=en-US&page=1&query=$query');
    searchPageModel = SearchPageModel.fromJson(response.data);
    print(response.data);
    return searchPageModel;
  } catch (e) {
    print(e);
  }
  return null;
}

Future<TopRatedModel?> getTopRatedModelWithPage ({required int page}) async {
  try {
    TopRatedModel topRatedModel;
   final response = await _dio.get('top_rated?api_key=51323e803b6016405fd167d04ea5097c&language=en-US&page=$page');
    topRatedModel = TopRatedModel.fromJson(response.data);
    print(response.data);
    return topRatedModel;
  } catch (e) {
    print(e);
  }
  return null;
}

Future<PopularModel?> getPopularModelWithPage ({required int page}) async {
  try {
    PopularModel popularModel;
    final response = await _dio.get('popular?api_key=51323e803b6016405fd167d04ea5097c&language=en-US&page=$page');
    popularModel = PopularModel.fromJson(response.data);
    print(response.data);
    return popularModel;
  } catch (e) {
    print(e);
  }
  return null;
}



