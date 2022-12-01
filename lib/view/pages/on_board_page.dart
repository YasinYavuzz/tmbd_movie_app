import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tmdb_movie_app/controller/on_board_page_controller/movie_detail_provider.dart';
import 'package:tmdb_movie_app/view/pages/show_page.dart';

class OnBoardPage extends StatefulWidget {
  OnBoardPage({super.key,required this.movie_id});
  final dynamic movie_id;
  @override
  State<OnBoardPage> createState() => _OnBoardPageState();
}

class _OnBoardPageState extends State<OnBoardPage> {
  @override
  void initState() {
    MovieDetailProvider movieDetailProvider = Provider.of<MovieDetailProvider>(context, listen:false);
    movieDetailProvider.getMovieDetailData(movie_id: widget.movie_id);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (BuildContext context, MovieDetailProvider value, Widget? child) { 
          return value.movieDetailModel != null ?  Stack(
          children: [
            Container(
            alignment: Alignment.bottomCenter,
            width: 100.w,
            height: 100.h,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage('https://image.tmdb.org/t/p/w600_and_h900_bestv2/${value.movieDetailModel!.backdropPath}'),fit: BoxFit.cover)
            ),
          ),
          Container(
              width: 100.w,
              height: 100.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xff303243).withOpacity(0.1),Color(0xff3D458F).withOpacity(0.1)]),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 100.w,
                height: 60.h,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 50,
                      color: Colors.black54.withOpacity(0.5).withAlpha(120),
                      spreadRadius: 50
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: 2.h),
                //padding: EdgeInsets.only(bottom: 1.h),
                width: 90.w,
                height: 42.h,
               // decoration: BoxDecoration(color: Colors.red),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      width: 100.w,
                      height: 8.h,
                      // decoration: BoxDecoration(color: Colors.blue),
                      child: Text('${value.movieDetailModel!.originalTitle}',style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.w700),),
                    ),
                    SizedBox(height: 1.h,),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: 90.w,
                      height: 16.5.h,
                      // decoration: BoxDecoration(color: Colors.blue),
                      child: Text('${value.movieDetailModel!.overview}',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),),
                    ),
                    SizedBox(height: 1.h,),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: 90.w,
                      height: 6.h,
                      // decoration: BoxDecoration(color: Colors.blue),
                      child: Text('${value.movieDetailModel!.tagline}',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w300),),
                    ),
                    SizedBox(height: 1.5.h,),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ShowPage(movie_id: widget.movie_id)));
                      },
                      child: Container(
                        width: 90.w,
                        height: 8.h,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                            Color(0xff8000FF),Color(0xff540BA1)
                          ]),
                          borderRadius: BorderRadius.circular(30)),
                          child: const Center(child: Text('Details',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w600),)),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ) : CircularProgressIndicator();

        },
        
      ),
    );
  }
}