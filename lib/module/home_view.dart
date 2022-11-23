import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    List categoryCourse = [
      "All Course",
      "UI/UX design",
      "Development",
      "Basic Web",
    ];

    int selectedIndex = 0;

    onTaken(int index) {
      selectedIndex = index;
      debugPrint("Selected index:$selectedIndex ");
      debugPrint("Index:$index ");
      setState(() {});
    }

    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 37.6,
              ),
              Container(
                height: 55.6,
                width: 328.95,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      16.0,
                    ),
                  ),
                ),
                child: Text(
                  "What would you like to learn today? Search below.",
                  style: GoogleFonts.poppins(
                    fontSize: 18.53,
                    color: const Color(0xff0E343D),
                  ),
                ),
              ),
              const SizedBox(
                height: 27.8,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 6.0,
                  horizontal: 12.0,
                ),
                margin: const EdgeInsets.symmetric(horizontal: 27.5),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        initialValue: null,
                        decoration: const InputDecoration.collapsed(
                          filled: true,
                          fillColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          hintText: "Search",
                        ),
                        onFieldSubmitted: (value) {},
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xff95D87A),
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 37.06,
              ),
              Container(
                height: 40.0,
                padding: const EdgeInsets.only(left: 27.08),
                child: ListView.builder(
                  itemCount: categoryCourse.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    var item = categoryCourse[index];
                    return InkWell(
                      onTap: () => onTaken(index),
                      child: Container(
                        margin: const EdgeInsets.only(right: 21.02),
                        child: Center(
                          child: Text(
                            "$item",
                            style: GoogleFonts.poppins(
                              fontSize: 16.22,
                              fontWeight: (selectedIndex == index)
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                              color: (selectedIndex == index)
                                  ? const Color(0xffC6A83C)
                                  : const Color(0xff0E343D),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 32.43,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 28.0),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 23,
                      crossAxisSpacing: 22.66,
                      childAspectRatio: 160.29 / 252.24),
                  itemCount: CorserServices.course.length,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    var item = CorserServices.course[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailCourse(
                                    item: item,
                                  )),
                        );
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xffEBEDEF),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              16.0,
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 130.89,
                              width: 178.38,
                              decoration: BoxDecoration(
                                color: item['color'],
                                image: DecorationImage(
                                  image: AssetImage(
                                    "${item['image']}",
                                  ),
                                  fit: BoxFit.fitHeight,
                                ),
                                borderRadius: const BorderRadius.vertical(
                                  top: Radius.circular(
                                    16.0,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 13.9,
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 11.43),
                              child: Row(
                                children: [
                                  Text("${item['name']}",
                                      overflow: TextOverflow.ellipsis,
                                      style: GoogleFonts.poppins(
                                          fontSize: (item['name'].length > 10)
                                              ? 13.22
                                              : 16.22,
                                          color: const Color(0xff0E343D),
                                          fontWeight: FontWeight.w500)),
                                  const Spacer(),
                                  Text("${item['price']}",
                                      style: GoogleFonts.poppins(
                                          fontSize: 16.22,
                                          fontWeight: FontWeight.w500,
                                          color: const Color(0xff0E343D))),
                                ],
                              ),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 11.43),
                              child: Text("By: ${item['trainer']}",
                                  style: GoogleFonts.poppins(
                                      fontSize: (item['trainer'].length > 10)
                                          ? 10.22
                                          : 13.9,
                                      color: const Color(0xff0E343D),
                                      fontWeight: FontWeight.normal)),
                            ),
                            const Divider(),
                            Container(
                              margin: const EdgeInsets.symmetric(
                                horizontal: 11.43,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "${item['total_leason']} Lesson",
                                    style: GoogleFonts.poppins(
                                        fontSize: 13.9,
                                        color: const Color(0xff0E343D),
                                        fontWeight: FontWeight.normal),
                                  ),
                                  const Spacer(),
                                  const Icon(
                                    Icons.star,
                                    size: 24.0,
                                    color: Colors.orange,
                                  ),
                                  Text(
                                    "${item['rating']}",
                                    style: GoogleFonts.poppins(
                                        fontSize: 13.9,
                                        color: const Color(0xff0E343D),
                                        fontWeight: FontWeight.normal),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
