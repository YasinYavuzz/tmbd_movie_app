import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tmdb_movie_app/controller/home_page_controller/now_playing_provider.dart';
import 'package:tmdb_movie_app/controller/home_page_controller/popular_provider.dart';
import 'package:tmdb_movie_app/controller/home_page_controller/top_rated_provider.dart';
import 'package:tmdb_movie_app/controller/home_page_controller/up_coming_proivder.dart';
import 'package:tmdb_movie_app/services/tmdb_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List menu = ['Alls','Films','Series','Animes','Documentaries'];

  @override
  void initState() {
    TopRatedProvider topRatedProvider = Provider.of<TopRatedProvider>(context, listen:false);
    topRatedProvider.getTopRatedData();

    PopularProvider popularProvider = Provider.of<PopularProvider>(context, listen:false);
    popularProvider.getPopularData();

    NowPlayingProvider nowPlayingProvider = Provider.of<NowPlayingProvider>(context, listen:false);
    nowPlayingProvider.getNowPlayingData();

    UpComingProvider upComingProvider = Provider.of<UpComingProvider>(context, listen:false);
    upComingProvider.getUpComingData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 100.w,
        height: 100.h,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
            Color(0xff8000FF),
            Color(0xff000000)
          ])
        ),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(height: 2.h,),
                Container(
                  alignment: Alignment.center,
                  width: 100.w,
                  height: 4.h,
                  child : Text('TMBD MOVIE APP',style: GoogleFonts.inter(color: Colors.white,fontSize: 26,fontWeight: FontWeight.w800),),
                  // decoration: const BoxDecoration(color: Colors.green),
                ),
                SizedBox(height: 2.h,),
                Container(
                  alignment: Alignment.center,
                  width: 92.w,
                  height: 7.h,
                  child: TextField(
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      prefixIcon: const Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Icon(Icons.search,color: Colors.grey,size: 28,),
                      ),
                      hintText: 'Filmleri, Dizileri Ara',
                      hintStyle: GoogleFonts.inter(
                        color : Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                      filled: true,
                      fillColor: const Color(0xff36076B),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide.none
                      )
                    ),
                  ),
                ),
                SizedBox(height: 5.h,),
                Container(
                  width: 100.w,
                  height: 7.h,
                  // decoration: const BoxDecoration(color: Colors.red),
                  child: ListView.builder(
                    padding: const EdgeInsets.all(5),
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(left: 12),
                        width: 35.w,
                        height: 2.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: index == 0 ?Color(0xffFF1F8A) : Color(0xff8000FF).withOpacity(0)),
                          child: Text('${menu[index]}',style: GoogleFonts.inter(color: index == 0 ?Colors.white : Colors.grey,fontSize:18)),
                      );
                    },),
                ),
                SizedBox(height: 3.h,),
                Row(
                  children: [
                    SizedBox(width: 2.h,),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: 90.w,
                      height: 5.h,
                      //decoration: BoxDecoration(color: Colors.amber),
                      child: Text('Gelmiş Geçmiş En İyiler',style: GoogleFonts.inter(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),)
                  ],
                ),
                SizedBox(height: 1.h,),
                Consumer(
                  builder: (BuildContext context, TopRatedProvider value, Widget? child) { 
                    return value.topRatedModel != null ? Container(
                    width: 100.w,
                    height: 25.h,
                    //decoration: const BoxDecoration(color: Colors.red),
                    child: ListView.builder(
                      //physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(5),
                      scrollDirection: Axis.horizontal,
                      itemCount: value.topRatedModel!.results!.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            // value.getIndex(index);
                          },
                          child: Container(
                            margin: const EdgeInsets.only(left: 12),
                            width: 40.w,
                            height: 25.h,
                            decoration: 
                            BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.blue,
                              image: DecorationImage(image: NetworkImage('https://image.tmdb.org/t/p/w600_and_h900_bestv2/${value.topRatedModel!.results![index].posterPath}'),fit: BoxFit.fill)
                              ),
                          ),
                        );
                      },),
                  ) : const CircularProgressIndicator();
                  },
                  
                ),
                SizedBox(height: 1.h,),
                Row(
                  children: [
                    SizedBox(width: 2.h,),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: 60.w,
                      height: 5.h,
                      //decoration: BoxDecoration(color: Colors.amber),
                      child: Text('Popular Filmler',style: GoogleFonts.inter(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),)
                  ],
                ),
                SizedBox(height: 1.h,),
                Consumer(
                  builder: (BuildContext context, PopularProvider value, Widget? child) { 
                    return value.popularModel != null ? Container(
                    width: 100.w,
                    height: 25.h,
                    //decoration: const BoxDecoration(color: Colors.red),
                    child: ListView.builder(
                      // physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(5),
                      scrollDirection: Axis.horizontal,
                      itemCount: value.popularModel!.results!.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.only(left: 12),
                          width: 40.w,
                          height: 25.h,
                          decoration: 
                          BoxDecoration(
                            image: DecorationImage(image: NetworkImage('https://image.tmdb.org/t/p/w600_and_h900_bestv2/${value.popularModel!.results![index].posterPath}'),fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.blue),
                        );
                      },),
                  ) : CircularProgressIndicator();
                   },
                  
                ),
                SizedBox(height: 1.h,),
                Row(
                  children: [
                    SizedBox(width: 2.h,),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: 60.w,
                      height: 5.h,
                      //decoration: BoxDecoration(color: Colors.amber),
                      child: Text('Vizyondakiler',style: GoogleFonts.inter(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),)
                  ],
                ),
                SizedBox(height: 1.h,),
                Consumer(
                  builder: (BuildContext context, NowPlayingProvider value, Widget? child) { 
                    return value.nowPlayingModel != null ? Container(
                    width: 100.w,
                    height: 25.h,
                    //decoration: const BoxDecoration(color: Colors.red),
                    child: ListView.builder(
                      // physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(5),
                      scrollDirection: Axis.horizontal,
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.only(left: 12),
                          width: 40.w,
                          height: 25.h,
                          decoration: 
                          BoxDecoration(
                            image: DecorationImage(image: NetworkImage('https://image.tmdb.org/t/p/w600_and_h900_bestv2/${value.nowPlayingModel!.results![index].posterPath}'),fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.blue),
                        );
                      },),
                  ) : CircularProgressIndicator();
                  },
                  
                ),
                SizedBox(height: 1.h,),
                Row(
                  children: [
                    SizedBox(width: 2.h,),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: 48.w,
                      height: 5.h,
                      //decoration: BoxDecoration(color: Colors.amber),
                      child: Text('Documentaries',style: GoogleFonts.inter(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),)
                  ],
                ),
                SizedBox(height: 1.h,),
                Container(
                  width: 100.w,
                  height: 25.h,
                  //decoration: const BoxDecoration(color: Colors.red),
                  child: ListView.builder(
                    //physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(5),
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(left: 12),
                        width: 40.w,
                        height: 25.h,
                        decoration: 
                        BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blue),
                      );
                    },),
                ),
                SizedBox(height: 2.h,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}