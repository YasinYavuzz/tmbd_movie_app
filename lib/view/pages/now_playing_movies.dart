import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tmdb_movie_app/controller/main_controller/change_page.dart';
import 'package:tmdb_movie_app/view/pages/home_page.dart';

import '../shimmer_pages/shimmer_movies_pages.dart';

class NowPlaying extends StatefulWidget {
  const NowPlaying({super.key});

  @override
  State<NowPlaying> createState() => _NowPlayingState();
}

class _NowPlayingState extends State<NowPlaying> {

  @override
  void initState() {
    ChangePageIndexProvider changePageIndexProvider = Provider.of<ChangePageIndexProvider>(context, listen:false);
    changePageIndexProvider.getNowPlayingPageDataWithPage();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  
           Consumer(
             builder: (BuildContext context, ChangePageIndexProvider value, Widget? child) { 
              return value.nowPlayingModel != null ? Container(
              width: 100.w,
              height: 100.h,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xff8000FF), Color(0xff000000)])),
              child: Column(
                children: [
                SizedBox(
                  height: 2.h,
                ),
                SafeArea(
                  child: Container(
                    width: 100.w,
                    height: 8.h,
                    //color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            value.getHomeChangePageIndex(0);
                            value.getPageReset(0);
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 3.h,right: 6.h),
                          width: 9.w,
                          height: 9.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red
                          ),
                          child: Center(child: Icon(Icons.arrow_back,color: Colors.white,)),
                                              ),
                        ),
                        Text('Vizyondaki Filmler',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  width: 100.w,
                  height: 73.h,
                  //color: Colors.amber,
                  child: GridView.builder(
                    padding: EdgeInsets.all(0),
                    itemCount: 8,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1.0,
                        crossAxisSpacing: 1.0.h,
                        mainAxisSpacing: 1.0.h),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(2),
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://image.tmdb.org/t/p/w600_and_h900_bestv2/${value.nowPlayingModel!.results![index].posterPath}'),
                                  fit: BoxFit.fill)
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  child: 
                       Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: (){
                              value.getNowPlayingPageDecrement();
                            },
                            child: Icon(
                              Icons.arrow_back_ios_new_sharp,
                              color: Colors.white,
                              size: 6.h,
                            )),
                        Text(
                          '${value.page}',
                        style: TextStyle(color: Colors.white,fontSize: 5.h),),
                        GestureDetector(
                          onTap: () {
                            value.getNowPlayingPageIncrement();
                          },
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 6.h,
                          ),
                        )
                      ],
                    ),
                     
                )
              ]),
                   ) : const ShimmerMoviesPages();
              },
             
           )
          
        
    );
  }
}