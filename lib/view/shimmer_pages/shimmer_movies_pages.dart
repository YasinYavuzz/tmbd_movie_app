import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerMoviesPages extends StatefulWidget {
  const ShimmerMoviesPages({super.key});

  @override
  State<ShimmerMoviesPages> createState() => _ShimmerMoviesPagesState();
}

class _ShimmerMoviesPagesState extends State<ShimmerMoviesPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
            Container(
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
                        Container(
                          margin: EdgeInsets.only(left: 3.h,right: 6.h),
                        width: 9.w,
                        height: 9.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          //color: Colors.red
                        ),
                        //child: Center(child: Icon(Icons.arrow_back,color: Colors.white,)),
                                            ),
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
                    physics: NeverScrollableScrollPhysics(),
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
                        child: Shimmer.fromColors(
                          baseColor: Colors.grey,
                          highlightColor: Colors.white,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(5)
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                
              ]),
                   )
           
    );
  }
}