import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'view/pages/show_page.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (BuildContext , Orientation , ScreenType ) { 
        return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ShowPage(),
      );
      },
      
    );
  }
}