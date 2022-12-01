
import 'package:dio/dio.dart';
import 'package:tmdb_movie_app/model/home_page_model/now_playing_model.dart';
import 'package:tmdb_movie_app/model/home_page_model/popular_model.dart';
import 'package:tmdb_movie_app/model/home_page_model/top_rated_model.dart';
import 'package:tmdb_movie_app/model/home_page_model/up_coming_model.dart';

String api_key = '51323e803b6016405fd167d04ea5097c';
String language = 'en-US';
int page = 1;

var parameters = {
  'api_key' : api_key,
  'language' : language,
  'page' : page
};

final Dio _dio = Dio(BaseOptions(baseUrl: "https://api.themoviedb.org/3/movie/",queryParameters: parameters));

Future<TopRatedModel?> getTopRatedModel() async {
  try {
    TopRatedModel topRatedModel;
    final response = await _dio.get('top_rated');
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
    final response = await _dio.get('popular');
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
    final response = await _dio.get('now_playing');
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
    final response = await _dio.get('upcoming');
    upComingModel = UpComingModel.fromJson(response.data);
    print(response.data);
    return upComingModel;
  } catch (e) {
    print(e);
  }
  return null;
}



