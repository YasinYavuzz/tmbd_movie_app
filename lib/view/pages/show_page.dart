import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tmdb_movie_app/controller/on_board_page_controller/movie_detail_provider.dart';
import 'package:tmdb_movie_app/controller/show_page_controller/show_page_acting_provider.dart';
import 'package:tmdb_movie_app/view/pages/home_page.dart';
import 'package:tmdb_movie_app/view/shimmer_pages/shimmer_show_page.dart';

class ShowPage extends StatefulWidget {
  ShowPage({super.key, required this.movie_id});
  final dynamic movie_id;

  @override
  State<ShowPage> createState() => _ShowPageState();
}

class _ShowPageState extends State<ShowPage> {

  @override
  void initState() {
    MovieDetailProvider movieDetailProvider = Provider.of<MovieDetailProvider>(context, listen:false);
    movieDetailProvider.getMovieDetailData(movie_id: widget.movie_id);

    ShowPageActingProvider showPageActingProvider = Provider.of<ShowPageActingProvider>(context, listen:false);
    showPageActingProvider.getShowPageActingData(movie_id: widget.movie_id);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff21222E),
      body: Consumer(
        builder: (BuildContext context, ShowPageActingProvider value, Widget? child) { 
          return value.showPageActingModel != null ? SingleChildScrollView(
          child: Stack(
            children: [
             
              Consumer(
                builder: (BuildContext context, ShowPageActingProvider value, Widget? child) { 
                  return value.showPageActingModel != null ? Container(
                  alignment: Alignment.bottomCenter,
                  width: 100.w,
                  height: 45.h,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage('https://image.tmdb.org/t/p/w600_and_h900_bestv2/${value.showPageActingModel!.cast![0].profilePath}'),
                          fit: BoxFit.cover),
                      ),
                ) : CircularProgressIndicator();
                },
                
              ),
              Column(
                children: [
                  SafeArea(
                    child: Container(
                      width: 90.w,
                      height: 6.h,
                      //color: Colors.red,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                          }, icon: Icon(Icons.arrow_back,size: 4.h,color: Colors.white,)),
                          IconButton(onPressed: () {
                            
                          }, icon: Icon(Icons.favorite_border,size : 4.h,color: Colors.white,))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 44.h,
                  ),
                  Container(
                    width: 100.w,
                    height: 1.h,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 20,
                          color: Color(0xff21222E).withOpacity(0.9))
                    ], color: Color(0xff21222E).withOpacity(1)),
                  ),
                ],
              ),
              Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 39.h,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 2.h),
                    alignment: Alignment.center,
                    width: 100.w,
                    height: 10.h,
                    decoration: BoxDecoration(
                        //color: Colors.red
                        ),
                    child: Consumer(
                      builder: (BuildContext context, MovieDetailProvider value, Widget? child) { 
                        return Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 1.h),
                            padding: EdgeInsets.all(6),
                            width: 10.h,
                            height: 10.h,
                            //color: Colors.blue,
                            child: CircularPercentIndicator(
                              circularStrokeCap: CircularStrokeCap.round,
                              backgroundColor: const Color(0xff303243),
                              radius: 32.0,
                              lineWidth: 8.0,
                              percent: (value.movieDetailModel!.voteAverage * 10)/100,
                              center: Center(
                                  child: Text(
                                "${((value.movieDetailModel!.voteAverage * 10)).toString().split('.').first}%",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500),
                              )),
                              progressColor: const Color(0xffFF1F8A),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 1.3.h),
                            width: 27.h,
                            height: 10.h,
                            //color: Colors.amber,
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    //color: Colors.green,
                                    child: Text(
                                      '${value.movieDetailModel!.originalTitle!.length > 15 ? value.movieDetailModel!.originalTitle!.substring(0,15) : value.movieDetailModel!.originalTitle!} (${value.movieDetailModel!.releaseDate.toString().split("-").first})',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          '${value.movieDetailModel!.releaseDate.toString().split("-")[2]}/${value.movieDetailModel!.releaseDate.toString().split("-")[1]}/${value.movieDetailModel!.releaseDate.toString().split("-")[0]} (${value.movieDetailModel!.productionCompanies![0].originCountry})',
                                          style: TextStyle(
                                              color: Color(0xffBBBBBB),
                                              fontSize: 17,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        //color: Colors.orange,
                                      ),
                                      
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      );
                      },
                      
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 38),
                      child: Divider(
                        color: Colors.black,
                        height: 1.h,
                      )),
                  SizedBox(
                    height: 1.h,
                  ),
                  Consumer(
                    builder: (BuildContext context, MovieDetailProvider value, Widget? child) { 
                      return Container(
                      padding: EdgeInsets.only(left: 0.2.h),
                      width: 80.w,
                      height: 16.5.h,
                      //color: Colors.red,
                      alignment: Alignment.center,
                      child: Text(
                        '${value.movieDetailModel!.overview}',
                        style: TextStyle(
                          color: Color(0xffCCCCCC),
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    );
                     },
                    
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Container(
                      width: 80.w,
                      height: 7.h,
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Color(0xff8000FF), Color(0xff540BA1)]),
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              margin: EdgeInsets.only(right: 1.h),
                              child: Icon(
                                Icons.play_circle_outline,
                                color: Colors.white,
                                size: 4.h,
                              )),
                          Center(
                              child: Text(
                            'Trailer',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w600),
                          )),
                        ],
                      )),
                      SizedBox(
                    height: 3.h,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 5.h),
                      width: 40.w,
                      height: 6.h,
                      //color: Colors.blue,
                      child: Text('Artists',style:TextStyle(color: Colors.white,fontSize: 5.h)),
                    ),
                  ),
                  Consumer(
                    builder: (BuildContext context, ShowPageActingProvider value, Widget? child) { 
                      return value.showPageActingModel != null ? Container(
                      padding: EdgeInsets.symmetric(horizontal: 3.h,vertical: 1.h),
                      width: 100.w,height: 18.h,
                      child: ListView.builder(
                        //padding: EdgeInsets.all(0),
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(right: 1.h),
                          width: 23.w,
                          //height: 10.h,
                          //color: Colors.amber,
                          child: Column(
                            children: [
                              Container(
                                width: 10.h,
                                height: 10.h,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  shape: BoxShape.circle,
                                  border: Border.all(width: 0.7.h,color: const Color(0xff303243)),
                                  image: DecorationImage(image: NetworkImage('https://image.tmdb.org/t/p/w600_and_h900_bestv2/${value.showPageActingModel!.cast![index].profilePath}'),fit: BoxFit.cover)
                                ),            
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 100.w,
                                height: 6.h,
                                //color: Colors.deepOrangeAccent,
                                child: Text('${value.showPageActingModel!.cast![index].name.toString().split(" ").first}\n${value.showPageActingModel!.cast![index].name.toString().split(" ").last}',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700),),
                              )
                            ],
                          ),
                        );
                      },) 
                    
                    ) : CircularProgressIndicator();
                     },
                    
                  ),
                  SizedBox(height: 2.h,),
                  
                  
                  
                ],
              ),
            ],
          ),
        ) : const ShimmerShowPage();
        },
        
      ),
    );
  }
}
