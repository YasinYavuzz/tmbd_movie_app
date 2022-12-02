
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tmdb_movie_app/controller/main_controller/change_page.dart';

class PopularMovies extends StatefulWidget {
  const PopularMovies({super.key});

  @override
  State<PopularMovies> createState() => _PopularMoviesState();
}

class _PopularMoviesState extends State<PopularMovies> {

  @override
  void initState() {
    ChangePageIndexProvider changePageIndexProvider = Provider.of<ChangePageIndexProvider>(context, listen:false);
    changePageIndexProvider.getPopularPageDataWithPage();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
         Consumer(
           builder: (BuildContext context, ChangePageIndexProvider value, Widget? child) { 
              return value.popularModel != null ? Container(
            width: 100.w,
            height: 100.h,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xff8000FF), Color(0xff000000)])),
            child: Column(children: [
              SizedBox(
                height: 2.h,
              ),
              SafeArea(
                child: Container(
                  width: 100.w,
                  height: 8.h,
                  //color: Colors.red,
                  child: const Center(
                      child: Text('Popüler Filmler',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold))),
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
                      childAspectRatio: 1.4,
                      crossAxisSpacing: 1.0.h,
                      mainAxisSpacing: 1.0.h),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://image.tmdb.org/t/p/w600_and_h900_bestv2/${value.popularModel!.results![index].posterPath}'),
                              fit: BoxFit.fill)
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
                            value.getPopularPageDecrement();
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
                          value.getPopularPageIncrement();
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
                 ) : CircularProgressIndicator();
           },
           
         ),
        
    );
  }
}