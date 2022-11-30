import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List menu = ['Alls','Films','Series','Animes','Documentaries'];
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
            colors: [
            Color(0xff8000FF),
            Color(0xff000000)
          ])
        ),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(height: 2.h,),
                Container(
                  alignment: Alignment.center,
                  width: 100.w,
                  height: 4.h,
                  child : Text('TMBD MOVIE APP',style: GoogleFonts.inter(color: Colors.white,fontSize: 26,fontWeight: FontWeight.w800),),
                  // decoration: const BoxDecoration(color: Colors.green),
                ),
                SizedBox(height: 2.h,),
                Container(
                  alignment: Alignment.center,
                  width: 92.w,
                  height: 7.h,
                  child: TextField(
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      prefixIcon: const Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Icon(Icons.search,color: Colors.grey,size: 28,),
                      ),
                      hintText: 'Filmleri, Dizileri Ara',
                      hintStyle: GoogleFonts.inter(
                        color : Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                      filled: true,
                      fillColor: const Color(0xff36076B),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide.none
                      )
                    ),
                  ),
                ),
                SizedBox(height: 5.h,),
                Container(
                  width: 100.w,
                  height: 7.h,
                  // decoration: const BoxDecoration(color: Colors.red),
                  child: ListView.builder(
                    padding: const EdgeInsets.all(5),
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(left: 12),
                        width: 35.w,
                        height: 2.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: index == 0 ?Color(0xffFF1F8A) : Color(0xff8000FF).withOpacity(0)),
                          child: Text('${menu[index]}',style: GoogleFonts.inter(color: index == 0 ?Colors.white : Colors.grey,fontSize:18)),
                      );
                    },),
                ),
                SizedBox(height: 3.h,),
                Row(
                  children: [
                    SizedBox(width: 2.h,),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: 40.w,
                      height: 5.h,
                      //decoration: BoxDecoration(color: Colors.amber),
                      child: Text('Films',style: GoogleFonts.inter(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),)
                  ],
                ),
                SizedBox(height: 1.h,),
                Container(
                  width: 100.w,
                  height: 25.h,
                  //decoration: const BoxDecoration(color: Colors.red),
                  child: ListView.builder(
                    //physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(5),
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(left: 12),
                        width: 40.w,
                        height: 25.h,
                        decoration: 
                        BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blue),
                      );
                    },),
                ),
                SizedBox(height: 1.h,),
                Row(
                  children: [
                    SizedBox(width: 2.h,),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: 40.w,
                      height: 5.h,
                      //decoration: BoxDecoration(color: Colors.amber),
                      child: Text('Series',style: GoogleFonts.inter(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),)
                  ],
                ),
                SizedBox(height: 1.h,),
                Container(
                  width: 100.w,
                  height: 25.h,
                  //decoration: const BoxDecoration(color: Colors.red),
                  child: ListView.builder(
                    // physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(5),
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(left: 12),
                        width: 40.w,
                        height: 25.h,
                        decoration: 
                        BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blue),
                      );
                    },),
                ),
                SizedBox(height: 1.h,),
                Row(
                  children: [
                    SizedBox(width: 2.h,),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: 40.w,
                      height: 5.h,
                      //decoration: BoxDecoration(color: Colors.amber),
                      child: Text('Animes',style: GoogleFonts.inter(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),)
                  ],
                ),
                SizedBox(height: 1.h,),
                Container(
                  width: 100.w,
                  height: 25.h,
                  //decoration: const BoxDecoration(color: Colors.red),
                  child: ListView.builder(
                    // physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(5),
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(left: 12),
                        width: 40.w,
                        height: 25.h,
                        decoration: 
                        BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blue),
                      );
                    },),
                ),
                SizedBox(height: 1.h,),
                Row(
                  children: [
                    SizedBox(width: 2.h,),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: 48.w,
                      height: 5.h,
                      //decoration: BoxDecoration(color: Colors.amber),
                      child: Text('Documentaries',style: GoogleFonts.inter(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),)
                  ],
                ),
                SizedBox(height: 1.h,),
                Container(
                  width: 100.w,
                  height: 25.h,
                  //decoration: const BoxDecoration(color: Colors.red),
                  child: ListView.builder(
                    //physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(5),
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(left: 12),
                        width: 40.w,
                        height: 25.h,
                        decoration: 
                        BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blue),
                      );
                    },),
                ),
                SizedBox(height: 2.h,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}