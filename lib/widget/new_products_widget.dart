import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modani/models/new_products.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class NewOutdoorProducts extends StatefulWidget {
  const NewOutdoorProducts({super.key});

  @override
  State<NewOutdoorProducts> createState() => _NewOutdoorProductsState();
}

class _NewOutdoorProductsState extends State<NewOutdoorProducts> {
  final controller = PageController();
  int activeIndex = 0;

  void _onDotClicked(int index) {
    // Move to the clicked dot's page
    controller.animateToPage(index,
        duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 60, right: 60),
          child: CarouselSlider.builder(
            itemCount: newphotos.length,
            itemBuilder: (context, index, realIndex) {
              return InkWell(
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () {},
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          width: 220,
                          height: 220,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              newphotos[index],
                              loadingBuilder:
                                  (context, child, loadingProgress) {
                                if (loadingProgress == null) {
                                  return child;
                                }
                                return Image.network(
                                  'https://telegra.ph/file/a775320534f348ae7f531.png',
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20,
                          child: Text(
                            name[index],
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          color[index],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          price[index],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 13,
                            color: Color.fromARGB(255, 255, 115, 0),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
            // carouselController: ,
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
        ),
      ],
    );
  }
}
