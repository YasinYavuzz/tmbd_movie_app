
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerOnPage extends StatefulWidget {
  const ShimmerOnPage({super.key});

  @override
  State<ShimmerOnPage> createState() => _ShimmerOnPageState();
}

class _ShimmerOnPageState extends State<ShimmerOnPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
          Stack(
          children: [
          Container(
              width: 100.w,
              height: 100.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
              Color(0xff8000FF),
              Color(0xff000000)
            ])
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
                    Shimmer.fromColors(
                      baseColor: Colors.grey,
                      highlightColor: Colors.white,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        width: 100.w,
                        height: 8.h,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        //child: Text('${value.movieDetailModel!.originalTitle}',style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.w700),),
                      ),
                    ),
                    SizedBox(height: 1.h,),
                    Shimmer.fromColors(
                      baseColor: Colors.grey,
                      highlightColor: Colors.white,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        width: 90.w,
                        height: 16.5.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blue),
                        //child: Text('${value.movieDetailModel!.overview}',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),),
                      ),
                    ),
                    SizedBox(height: 1.h,),
                    Shimmer.fromColors(
                      baseColor: Colors.grey,
                      highlightColor: Colors.white,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        width: 90.w,
                        height: 6.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blue),
                        //child: Text('${value.movieDetailModel!.tagline}',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w300),),
                      ),
                    ),
                    SizedBox(height: 1.5.h,),
                    
                     Shimmer.fromColors(
                      baseColor: Colors.grey,
                      highlightColor: Colors.white,
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
                            //child: const Center(child: Text('Details',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w600),)),
                        ),
                     ),
                    
                  ],
                ),
              ),
            ),
          ],
        
        
      ),
    );
  }
}