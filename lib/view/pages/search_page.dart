import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tmdb_movie_app/controller/search_page_controller/search_page_provider.dart';
import 'package:tmdb_movie_app/view/shimmer_pages/shimmer_search_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  // SearchPageProvider? searchPageProvider;
  @override
  void initState() {
    SearchPageProvider searchPageProvider =
        Provider.of<SearchPageProvider>(context, listen: false);
    searchPageProvider.getSearchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        //extendBodyBehindAppBar: false,
        body: Consumer(
          builder: (BuildContext context, SearchPageProvider provider,
              Widget? child) {
            return provider.searchPageModel != null
                ? Container(
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
                          child: Container(
                            alignment: Alignment.center,
                            width: 92.w,
                            height: 7.h,
                            child: TextField(
                              onChanged: (value) {
                                if (value.isEmpty) {
                                  provider.getQuery(query: 'a');
                                }
                                else{
                                  provider.getQuery(query: value);
                                }
                                
                              },
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
                        SizedBox(
                          height: 2.h,
                        ),
                        Container(
                          width: 100.w,
                          height: 78.h,
                          //color: Colors.red,
                          child: ListView.builder(
                            padding: EdgeInsets.all(0),
                            //shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: provider.searchPageModel!.results!.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                tileColor: Colors.red,
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: .6.h, horizontal: .8.h),
                                leading: CircleAvatar(
                                  backgroundImage: provider.searchPageModel!.results![index].posterPath != null ? NetworkImage(
                                      'https://image.tmdb.org/t/p/w600_and_h900_bestv2/${provider.searchPageModel!.results![index].posterPath}',scale: 0.1) : NetworkImage('https://cdn03.ciceksepeti.com/cicek/hf6399-1/XL/yuz-ifadeli-yastik-uzgun-surat-hf6399-1-1.jpg'),
                                  radius: 5.h,
                                ),
                                title: Text(
                                  '${provider.searchPageModel!.results![index].originalTitle}',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w800),
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  )
                : const ShimmerSearchPage();
          },
        ));
  }
}
