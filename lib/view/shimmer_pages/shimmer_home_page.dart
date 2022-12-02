import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerHomePage extends StatefulWidget {
  const ShimmerHomePage({super.key});

  @override
  State<ShimmerHomePage> createState() => _ShimmerHomePageState();
}

class _ShimmerHomePageState extends State<ShimmerHomePage> {
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
                colors: [Color(0xff8000FF), Color(0xff000000)])),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 2.h,
                ),
                Shimmer.fromColors(
                  baseColor: Colors.grey,
                  highlightColor: Colors.white,
                  child: Container(
                    alignment: Alignment.center,
                    width: 70.w,
                    height: 4.h,
                    //color: Colors.grey,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey),
                    //child : Text('TMBD MOVIE APP',style: GoogleFonts.inter(color: Colors.white,fontSize: 26,fontWeight: FontWeight.w800),),
                    // decoration: const BoxDecoration(color: Colors.green),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Shimmer.fromColors(
                  baseColor: Colors.grey,
                  highlightColor: Colors.white,
                  child: Container(
                    alignment: Alignment.center,
                    width: 92.w,
                    height: 7.h,
                    child: TextField(
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          prefixIcon: const Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Icon(
                              Icons.search,
                              color: Colors.grey,
                              size: 28,
                            ),
                          ),
                          filled: true,
                          fillColor: const Color(0xff36076B),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide.none)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Container(
                  width: 100.w,
                  height: 7.h,
                  // decoration: const BoxDecoration(color: Colors.red),
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(5),
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Shimmer.fromColors(
                        baseColor: Colors.grey,
                        highlightColor: Colors.white,
                        child: Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(left: 12),
                          width: 35.w,
                          height: 2.h,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(30),
                            //color: index == value.home_index ?Color(0xffFF1F8A) : Color(0xff8000FF).withOpacity(0)),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 2.h,
                    ),
                    Shimmer.fromColors(
                      baseColor: Colors.grey,
                      highlightColor: Colors.white,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        width: 60.w,
                        height: 5.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),
                Container(
                  width: 100.w,
                  height: 25.h,
                  //decoration: const BoxDecoration(color: Colors.red),
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    //physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(5),
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Shimmer.fromColors(
                        baseColor: Colors.grey,
                        highlightColor: Colors.white,
                        child: Container(
                          margin: const EdgeInsets.only(left: 12),
                          width: 40.w,
                          height: 25.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.blue,
                            //image: DecorationImage(image: NetworkImage('https://image.tmdb.org/t/p/w600_and_h900_bestv2/${value.topRatedModel!.results![index].posterPath}'),fit: BoxFit.fill)
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 2.h,
                    ),
                    Shimmer.fromColors(
                      baseColor: Colors.grey,
                      highlightColor: Colors.white,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        width: 60.w,
                        height: 5.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),
                Container(
                  width: 100.w,
                  height: 25.h,
                  //decoration: const BoxDecoration(color: Colors.red),
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    // physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(5),
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Shimmer.fromColors(
                        baseColor: Colors.grey,
                        highlightColor: Colors.white,
                        child: Container(
                          margin: const EdgeInsets.only(left: 12),
                          width: 40.w,
                          height: 25.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.blue,
                            //image: DecorationImage(image: NetworkImage('https://image.tmdb.org/t/p/w600_and_h900_bestv2/${value.topRatedModel!.results![index].posterPath}'),fit: BoxFit.fill)
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
