// ignore_for_file: unused_element, prefer_const_constructors, sized_box_for_whitespace

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'unitls/Strings.dart';

class Furniture extends StatefulWidget {
  const Furniture({super.key});
  static const routeName = 'furniture';
  @override
  State<Furniture> createState() => _FurnitureState();
}

class _FurnitureState extends State<Furniture> {
  final controller = PageController();
  int currentIndex = 0;
  int activeIndex = 0;

  void _onDotClicked(int index) {
    // Move to the clicked dot's page
    controller.animateToPage(index,
        duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      alignment: Alignment.center,
      height: 500,
      width: double.infinity,
      color: const Color.fromRGBO(245, 245, 245, 1),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                SizedBox(
                  height: 350,
                  width: 600,
                  child: Image.network(
                    'https://rdentleu.sirv.com/modani/wysiwyg/home-testimonial.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Expanded(     
                      //   flex: 1,
                      //   child: SizedBox(
                      //     height: 50,
                      //     width: 80,
                      //     child: Image.network(
                      //       '               ',
                      //       fit: BoxFit.cover,
                      //     ),
                      //   ),
                      // ),
                      CarouselSlider.builder(
                        itemCount: 4,
                        itemBuilder: (context, index, realIndex) {
                          return Column(
                            children: [
                              // Row(
                              //   children: [
                              //     Text(title_[index],
                              //         style: GoogleFonts.poppins(
                              //           fontSize: 15,
                              //           fontWeight: FontWeight.w400,
                              //           color: Colors.black,
                              //         )),
                              //   ],
                              // ),
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  Text(
                                    subtitle_[index],
                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          );
                        },
                        options: CarouselOptions(
                          onPageChanged: (index, reason) {
                            setState(() {
                              activeIndex = index;
                            });
                          },
                          height: 300,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 6),
                          disableCenter: true,
                          viewportFraction: 0.2,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
