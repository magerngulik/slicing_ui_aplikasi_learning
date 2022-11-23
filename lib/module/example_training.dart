import 'package:aplikasi_learning/core.dart';
import 'package:aplikasi_learning/module/home_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExampleTraining extends StatefulWidget {
  const ExampleTraining({Key? key}) : super(key: key);

  @override
  State<ExampleTraining> createState() => _ExampleTrainingState();
}

class _ExampleTrainingState extends State<ExampleTraining> {
  int selectedIndex = 0;
  List menu = [
    {
      "title": "Home",
      "icon": Icons.home,
    },
    {
      "title": "History",
      "icon": Icons.history,
    },
    {
      "title": "Chat",
      "icon": Icons.chat,
    },
    {
      "title": "Person",
      "icon": Icons.person,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    16.0,
                  ),
                ),
              ),
              child: IndexedStack(
                index: selectedIndex,
                children: [
                  HomeView(),
                  Container(
                    color: Colors.purple[100],
                  ),
                  Container(
                    color: Colors.purple[100],
                  ),
                  Container(
                    color: Colors.blue[100],
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 20.0,
              right: 0,
              left: 0,
              child: Container(
                height: 81.08,
                width: 378.76,
                margin: const EdgeInsets.symmetric(
                    horizontal: 23.0, vertical: 25.48),
                decoration: const BoxDecoration(
                  color: Color(0xff0E343D),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      16.0,
                    ),
                  ),
                ),
                child: Row(
                    children: List.generate(
                  menu.length,
                  (index) {
                    var item = menu[index];
                    return InkWell(
                      onTap: () {
                        selectedIndex = index;
                        setState(() {});
                      },
                      child: Container(
                        margin: (selectedIndex == index)
                            ? const EdgeInsets.symmetric(horizontal: 24.5)
                            : const EdgeInsets.only(left: 12.5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              item['icon'],
                              size: 40,
                              color: (selectedIndex == index)
                                  ? Color(0xffFFE892)
                                  : Color(0xffB1DAE3),
                            ),
                            const SizedBox(
                              width: 6.95,
                            ),
                            (selectedIndex == index)
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      Container(
                                        height: 3.0,
                                        width: 40,
                                        decoration: const BoxDecoration(
                                          color: Color(0xffFFE892),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(
                                              16.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        item['title'],
                                        style: GoogleFonts.poppins(
                                          fontSize: 13.9,
                                          fontWeight: FontWeight.bold,
                                          color: const Color(0xffFFE892),
                                        ),
                                      ),
                                    ],
                                  )
                                : Container()
                          ],
                        ),
                      ),
                    );
                  },
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
