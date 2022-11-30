import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OnBoardPage extends StatefulWidget {
  const OnBoardPage({super.key});

  @override
  State<OnBoardPage> createState() => _OnBoardPageState();
}

class _OnBoardPageState extends State<OnBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
          alignment: Alignment.bottomCenter,
          width: 100.w,
          height: 100.h,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/dune.png'),fit: BoxFit.cover)
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
              height: 40.h,
             // decoration: BoxDecoration(color: Colors.red),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    width: 50.w,
                    height: 5.h,
                    // decoration: BoxDecoration(color: Colors.blue),
                    child: Text('THE MOVIE DB',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w700),),
                  ),
                  SizedBox(height: 3.h,),
                  Container(
                    alignment: Alignment.centerLeft,
                    width: 90.w,
                    height: 16.h,
                    // decoration: BoxDecoration(color: Colors.blue),
                    child: Text('Tudo sobre filmes, series, animes e muito mais.',style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.w500),),
                  ),
                  SizedBox(height: 2.h,),
                  Container(
                    alignment: Alignment.centerLeft,
                    width: 90.w,
                    height: 4.h,
                    // decoration: BoxDecoration(color: Colors.blue),
                    child: Text('Tudo sobre filmes, series, animes e muito mais.',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w300),),
                  ),
                  SizedBox(height: 1.5.h,),
                  Container(
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
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}