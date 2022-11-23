import 'package:aplikasi_learning/core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class ChoiceAge extends StatefulWidget {
  const ChoiceAge({Key? key}) : super(key: key);

  @override
  State<ChoiceAge> createState() => _ChoiceAgeState();
}

class _ChoiceAgeState extends State<ChoiceAge> {
  List age = [
    {"title": "Beginner", "age": "10 - 16", "height": 289.0},
    {"title": "Medium", "age": "16 - 24", "height": 336.0},
    {"title": "Intermediate", "age": "24 - 36", "height": 388.0}
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 91.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Choose your level",
                        style: GoogleFonts.jost(
                            fontSize: 24, fontWeight: FontWeight.w600)),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text("Select your Level ",
                        style: GoogleFonts.jost(
                            fontSize: 16, fontWeight: FontWeight.normal)),
                  ],
                ),
              ),
              const SizedBox(
                height: 32.0,
              ),
              Container(
                height: 423,
                width: 335,
                margin: const EdgeInsets.symmetric(horizontal: 21.0),
                decoration: const BoxDecoration(),
                child: Row(
                    children: List.generate(
                  age.length,
                  (index) {
                    var item = age[index];
                    return SingleChildScrollView(
                      child: InkWell(
                        onTap: () {
                          selectedIndex = index;
                          setState(() {});
                        },
                        child: Container(
                          height: 423,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: item['height'],
                                width: 100,
                                margin: const EdgeInsets.only(left: 10.0),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1.0,
                                    color: (selectedIndex != index)
                                        ? const Color(0xffF5F5F5)
                                        : const Color(0xff00C8A6),
                                  ),
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(
                                      32.0,
                                    ),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 54.0,
                                      width: 100.0,
                                      decoration: BoxDecoration(
                                        color: (selectedIndex != index)
                                            ? const Color(0xffF5F5F5)
                                            : const Color(0xff00C8A6),
                                        borderRadius:
                                            const BorderRadius.vertical(
                                          top: Radius.circular(
                                            32.0,
                                          ),
                                        ),
                                      ),
                                      child: Column(
                                        children: [
                                          const SizedBox(
                                            height: 8.0,
                                          ),
                                          Text("${item['age']}",
                                              style: GoogleFonts.jost(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: (selectedIndex != index)
                                                    ? Colors.black
                                                    : Colors.white,
                                              )),
                                          Text("Age",
                                              style: GoogleFonts.jost(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.normal,
                                                  color:
                                                      const Color(0xffFDFDFD))),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: 100.0,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.vertical(
                                            bottom: Radius.circular(
                                              32.0,
                                            ),
                                          ),
                                        ),
                                        child: Container(
                                          margin: const EdgeInsets.symmetric(
                                              vertical: 24.0),
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                "assets/images/person_age.png",
                                              ),
                                              fit: BoxFit.fitHeight,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                )),
              ),
              const SizedBox(
                height: 50.0,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NavigatoerView()),
                        );
                      },
                      child: CircleAvatar(
                        radius: 31,
                        backgroundColor: const Color(0xffD9F7F2),
                        child: Text("Skip",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: const Color(0xff00C8A6),
                            )),
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NavigatoerView()),
                        );
                      },
                      child: CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.blueGrey,
                        child: Text("Continue",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                            )),
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
