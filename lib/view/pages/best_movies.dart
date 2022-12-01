import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tmdb_movie_app/controller/home_page_controller/top_rated_provider.dart';
import 'package:tmdb_movie_app/controller/main_controller/change_page.dart';

class BestMovies extends StatefulWidget {
  const BestMovies({super.key});

  @override
  State<BestMovies> createState() => _BestMoviesState();
}

class _BestMoviesState extends State<BestMovies> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xff21222E),
      body: Consumer(
        builder: (BuildContext context, TopRatedProvider value, Widget? child) { 
          return Container(
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
                    child: Text('Gelmiş Geçmiş En İyi Filmler',
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
                                'https://image.tmdb.org/t/p/w600_and_h900_bestv2/${value.topRatedModel!.results![index].posterPath}'),
                            fit: BoxFit.fill)),
                  );
                },
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: Consumer(
                builder: (BuildContext context, ChangePageIndexProvider value, Widget? child) { 
                  return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: (){
                          // Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios_new_sharp,
                          color: Colors.white,
                          size: 6.h,
                        )),
                    GestureDetector(
                      onTap: () {
                        
                      },
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 6.h,
                      ),
                    )
                  ],
                );
                 },
                
              ),
            )
          ]),
        );
        },
        
      ),
    );
  }
}
