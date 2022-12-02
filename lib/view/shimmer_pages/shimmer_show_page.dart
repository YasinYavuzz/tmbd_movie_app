import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerShowPage extends StatefulWidget {
  const ShimmerShowPage({super.key});

  @override
  State<ShimmerShowPage> createState() => _ShimmerShowPageState();
}

class _ShimmerShowPageState extends State<ShimmerShowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: 100.w,
        height: 100.h,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xff8000FF), Color(0xff000000)])),
          child: Stack(
            children: [
              SafeArea(
                child: Shimmer.fromColors(
                  baseColor: Colors.grey,
                  highlightColor: Colors.white,
                  child: Container(
                    color: Colors.red,
                    alignment: Alignment.bottomCenter,
                    width: 100.w,
                    height: 45.h,
                  ),
                ),
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
                        //color: Colors.amber
                        ),
                  ),
                  Shimmer.fromColors(
                    baseColor: Colors.grey,
                    highlightColor: Colors.white,
                    child: Container(
                      padding: EdgeInsets.only(left: 0.2.h),
                      width: 80.w,
                      height: 16.5.h,
                      //color: Colors.red,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(5)
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1.5.h,
                  ),
                  Shimmer.fromColors(
                    baseColor: Colors.grey,
                    highlightColor: Colors.white,
                    child: Container(
                        width: 80.w,
                        height: 7.h,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [Color(0xff8000FF), Color(0xff540BA1)]),
                            borderRadius: BorderRadius.circular(30)),
                        ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Shimmer.fromColors(
                      baseColor: Colors.grey,
                      highlightColor: Colors.white,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 5.h),
                        width: 40.w,
                        height: 6.h,
                        //color: Colors.blue,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        //child: Text('Artists',style:TextStyle(color: Colors.white,fontSize: 5.h)),
                      ),
                    ),
                  ),
                  Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 3.h, vertical: 1.h),
                      width: 100.w,
                      height: 18.h,
                      child: ListView.builder(
                        //padding: EdgeInsets.all(0),
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return Shimmer.fromColors(
                            baseColor: Colors.grey,
                            highlightColor: Colors.white,
                            child: Container(
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
                                      border: Border.all(
                                          width: 0.7.h,
                                          color: const Color(0xff303243)),
                                      //image: DecorationImage(image: NetworkImage('https://image.tmdb.org/t/p/w600_and_h900_bestv2/${value.showPageActingModel!.cast![index].profilePath}'),fit: BoxFit.cover)
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    width: 100.w,
                                    height: 6.h,
                                    //color: Colors.deepOrangeAccent,
                                    //child: Text('${value.showPageActingModel!.cast![index].name.toString().split(" ").first}\n${value.showPageActingModel!.cast![index].name.toString().split(" ").last}',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700),),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
