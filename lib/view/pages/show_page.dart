import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ShowPage extends StatefulWidget {
  const ShowPage({super.key});

  @override
  State<ShowPage> createState() => _ShowPageState();
}

class _ShowPageState extends State<ShowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff21222E),
      body: SingleChildScrollView(
        child: Stack(
          children: [
           
            Container(
              alignment: Alignment.bottomCenter,
              width: 100.w,
              height: 45.h,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/imperdoavel.png'),
                      fit: BoxFit.cover),
                  color: Colors.amber),
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
                  child: Row(
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
                          percent: 0.45,
                          center: const Center(
                              child: Text(
                            "45%",
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
                        width: 25.h,
                        height: 10.h,
                        //color: Colors.amber,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.center,
                                //color: Colors.green,
                                child: Text(
                                  'Imperdoavel (2021)',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
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
                                    //alignment: Alignment.center,
                                    child: Text(
                                      ' 10/12/21 (BR)',
                                      style: TextStyle(
                                          color: Color(0xffBBBBBB),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    //color: Colors.orange,
                                  ),
                                  Text(' - ',
                                      style: TextStyle(
                                          color: Color(0xffBBBBBB),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400)),
                                  Image.asset('assets/ic_clock.png'),
                                  Text(' 1h 53m',
                                      style: TextStyle(
                                          color: Color(0xffBBBBBB),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400))
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
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
                Container(
                  padding: EdgeInsets.only(left: 0.2.h),
                  width: 80.w,
                  height: 16.5.h,
                  //color: Colors.red,
                  alignment: Alignment.center,
                  child: Text(
                    'Após cumprir pena por um crime violento, Ruth volta ao convívio na sociedade, que se recusa a perdoar seu passado. Discriminada no lugar que já chamou de lar, sua única esperança é encontrar a irmã, que ela havia sido forçada a deixar para trás.',
                    style: TextStyle(
                      color: Color(0xffCCCCCC),
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.left,
                  ),
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
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 3.h,vertical: 1.h),
                  width: 100.w,height: 18.h,
                  child: ListView.builder(
                    //padding: EdgeInsets.all(0),
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 1.h),
                      width: 22.w,
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
                              image: const DecorationImage(image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/d/da/Sandra_Bullock%2C_The_Heat%2C_London%2C_2013_%28crop%29.jpg'),fit: BoxFit.cover)
                            ),            
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 100.w,
                            height: 6.h,
                            //color: Colors.deepOrangeAccent,
                            child: const Text('Sandra\nBullock',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700),),
                          )
                        ],
                      ),
                    );
                  },) 
                
                ),
                SizedBox(height: 1.h,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 5.h),
                    width: 50.w,
                    height: 6.h,
                    //color: Colors.blue,
                    child: Text('Categories',style:TextStyle(color: Colors.white,fontSize: 5.h)),
                  ),
                ),
                SizedBox(height: .2.h,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.h,vertical: 1.h),
                  width: 100.w,
                  height: 7.h,
                  //color: Colors.red,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 1.5.h),
                      width: 27.w,
                      decoration: BoxDecoration(
                        color: Color(0xff303243),
                        borderRadius: BorderRadius.circular(25)),
                      child: Center(child: Text('Drama',style:TextStyle(color: Colors.white,fontSize: 2.h))),
                    );
                  },),
                ),
                SizedBox(height: 2.h,)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
