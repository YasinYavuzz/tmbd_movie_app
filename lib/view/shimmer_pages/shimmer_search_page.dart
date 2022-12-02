import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerSearchPage extends StatefulWidget {
  const ShimmerSearchPage({super.key});

  @override
  State<ShimmerSearchPage> createState() => _ShimmerSearchPageState();
}

class _ShimmerSearchPageState extends State<ShimmerSearchPage> {
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
            colors: [Color(0xff8000FF), Color(0xff000000)]),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 3.h,
          ),
          SafeArea(
            child: Shimmer.fromColors(
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
                      hintText: 'Filmleri, Dizileri Ara',
                      hintStyle: GoogleFonts.inter(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                      filled: true,
                      fillColor: const Color(0xff36076B),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide.none)),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Container(
            padding: EdgeInsets.only(left: 10,right : 80),
            width: 100.w,
            height: 78.h,
            //color: Colors.red,
            child: ListView.builder(
              padding: EdgeInsets.all(0),
              //shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: 8,
              itemBuilder: (context, index) {
                return ListTile(
                  tileColor: Colors.red,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: .8.h, horizontal: .8.h),
                  leading: Shimmer.fromColors(
                    baseColor: Colors.grey,
                    highlightColor: Colors.white,
                    child: CircleAvatar(
                      radius: 5.h,
                    ),
                  ),
                  title: Shimmer.fromColors(
                    baseColor: Colors.grey,
                    highlightColor: Colors.white,
                    child: Container(
                      width: 30.w,
                      height: 2.5.h,
                      color: Colors.red,
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    ));
  }
}
