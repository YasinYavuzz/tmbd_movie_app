import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
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
      body: Stack(
        children: [
          Container(
            width: 100.w,
            height: 100.h,
            decoration: BoxDecoration(
              color: Color(0xff21222E)),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            width: 100.w,
            height: 45.h,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/imperdoavel.png'),fit: BoxFit.cover),
              color: Colors.amber),
            child: Container(width: 100.w,height: 18.h,),  
          ),
          Column(
            children: [
              SizedBox(height: 44.h,),
              Container(
                width: 100.w,
                height: 1.h,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 20,
                      color: Color(0xff21222E).withOpacity(0.9)
                    )
                  ],
                  color: Color(0xff21222E).withOpacity(1)),
              )
            ],
          )
        ],
      ),
    );
  }
}