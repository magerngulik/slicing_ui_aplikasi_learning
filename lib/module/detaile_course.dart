import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class DetailCourse extends StatefulWidget {
  Map item;
  DetailCourse({required this.item, Key? key}) : super(key: key);

  @override
  State<DetailCourse> createState() => _DetailCourseState();
}

class _DetailCourseState extends State<DetailCourse> {
  int selectedList = 0;
  List videoCourse = [
    {"title": "Welcome to the course", "minutes": "56 Minute"},
    {"title": "What the Marketing", "minutes": "56 Minute"},
    {"title": "What the Marketing", "minutes": "56 Minute"},
    {"title": "What the Marketing", "minutes": "56 Minute"},
    {"title": "What the Marketing", "minutes": "56 Minute"},
    {"title": "What the Marketing", "minutes": "56 Minute"},
    {"title": "What the Marketing", "minutes": "56 Minute"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: 337,
                width: 434,
                decoration: BoxDecoration(
                  color: widget.item['color'],
                  image: DecorationImage(
                    image: AssetImage(
                      "${widget.item['image']}",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 27.8,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 27.5,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 48.65,
                            height: 48.65,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(13.0),
                              ),
                            ),
                            child: const Icon(
                              Icons.arrow_back,
                              size: 27.8,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Container(
                          width: 48.65,
                          height: 48.65,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(13.0),
                            ),
                          ),
                          child: const Icon(
                            Icons.share_outlined,
                            size: 27.8,
                          ),
                        ),
                        const SizedBox(
                          width: 27.5,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 23.0,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 27.8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${widget.item['name']}",
                      style: GoogleFonts.poppins(
                        fontSize: 23.17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 27.8),
                child: ReadMoreText(
                  'Marketing referes to any actions a company takes to attract an audience to the public Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                  trimLines: 2,
                  colorClickableText: Colors.pink,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Read more',
                  trimExpandedText: 'Show less',
                  style: GoogleFonts.poppins(
                    fontSize: 16.22,
                  ),
                  moreStyle: GoogleFonts.poppins(
                      fontSize: 16.22, color: const Color(0xff95D87A)),
                ),
              ),
              const SizedBox(
                height: 9.27,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 27.8),
                child: Row(
                  children: [
                    Text("10 Chapter",
                        style: GoogleFonts.poppins(
                            fontSize: 16.22, color: const Color(0xff95D87A))),
                    const SizedBox(
                      width: 13.9,
                    ),
                    Text("|",
                        style: GoogleFonts.poppins(
                            fontSize: 16.22, color: const Color(0xff95D87A))),
                    const SizedBox(
                      width: 13.9,
                    ),
                    Text("Full 5 hours",
                        style: GoogleFonts.poppins(
                            fontSize: 16.22, color: const Color(0xff95D87A))),
                  ],
                ),
              ),
              const SizedBox(
                height: 27.8,
              ),
              Container(
                height: 52.12,
                margin: const EdgeInsets.symmetric(horizontal: 27.8),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      16.0,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://i.ibb.co/PGv8ZzG/me.jpg",
                      ),
                    ),
                    const SizedBox(
                      width: 13.9,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${widget.item['trainer']}",
                          style: GoogleFonts.poppins(
                              fontSize: 16.22, color: Colors.black),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("${widget.item['total_leason']} Chapter",
                                style: GoogleFonts.poppins(
                                    fontSize: 13.9, color: Colors.black)),
                            const SizedBox(
                              width: 9.27,
                            ),
                            Text("|",
                                style: GoogleFonts.poppins(
                                    fontSize: 13.9,
                                    color: const Color(0xff95D87A))),
                            const SizedBox(
                              width: 9.27,
                            ),
                            const Icon(
                              Icons.star,
                              size: 16.0,
                              color: Colors.orange,
                            ),
                            const SizedBox(
                              width: 5.49,
                            ),
                            Text("${widget.item['rating']} (120 Riview)",
                                style: GoogleFonts.poppins(
                                  fontSize: 13.9,
                                  color: Colors.black,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 35.9),
                child: Row(
                  children: [
                    Container(
                      width: 192,
                      height: 46.33,
                      child: Row(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff95D87A),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(13.9), // <-- Radius
                              ),
                            ),
                            onPressed: () {},
                            child: Text("Lesson Content(52)",
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                )),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: 192,
                        height: 46.33,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(13.9),
                          ),
                        ),
                        child: Row(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(13.9), // <-- Radius
                                ),
                              ),
                              onPressed: () {},
                              child: Text("(120)Riviews",
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 27.8,
              ),
              Container(
                width: 378.86,
                height: 393.82,
                margin: const EdgeInsets.symmetric(horizontal: 27.5),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      16.0,
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: videoCourse.length,
                        itemBuilder: (context, index) {
                          var item = videoCourse[index];

                          return (selectedList != index)
                              ? Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 20.85),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.play_circle_fill,
                                        size: 18.53,
                                        color: Color(0xff95D87A),
                                      ),
                                      const SizedBox(
                                        width: 11.58,
                                      ),
                                      Text(
                                        "${item['title']}",
                                        style: GoogleFonts.poppins(
                                          fontSize: 13.9,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 6.95,
                                      ),
                                      Text(
                                        "${item['minutes']}",
                                        style: GoogleFonts.poppins(
                                          fontSize: 13.9,
                                          color: const Color(0xff95D87A),
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              : Container(
                                  height: 47.49,
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Icon(
                                        Icons.play_circle_fill,
                                        size: 25.48,
                                        color: Color(0xff95D87A),
                                      ),
                                      const SizedBox(
                                        width: 12.66,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "${item['title']}",
                                            style: GoogleFonts.poppins(
                                              fontSize: 13.9,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            "${item['minutes']}",
                                            style: GoogleFonts.poppins(
                                              fontSize: 13.9,
                                              color: const Color(0xff788D92),
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                        },
                      ),
                    ),
                    Container(
                      height: 30.12,
                      width: 127.41,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                        border: Border.all(
                          width: 1.0,
                          color: const Color(0xff95D87A),
                        ),
                      ),
                      child: Center(
                        child: Text("See all Lessons",
                            style: GoogleFonts.poppins(
                              fontSize: 13.9,
                              color: const Color(0xff95D87A),
                              fontWeight: FontWeight.w400,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 37.6,
              ),
              Container(
                height: 64.86,
                width: 378.76,
                margin: const EdgeInsets.symmetric(horizontal: 27.8),
                decoration: const BoxDecoration(
                  color: Color(0xff95D87A),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      16.0,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.lock_outline,
                      size: 27.8,
                      color: const Color(0xff0E343D),
                    ),
                    const SizedBox(
                      width: 13.9,
                    ),
                    Text(
                      "Unlock All Videos",
                      style: GoogleFonts.poppins(
                        fontSize: 13.9,
                        color: const Color(0xff0E343D),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
