import 'package:flutter/material.dart';

import 'unitls/Strings.dart';

class Furniture extends StatefulWidget {
  const Furniture({super.key});
  static const routeName = 'furniture';
  @override
  State<Furniture> createState() => _FurnitureState();
}

class _FurnitureState extends State<Furniture> {
  PageController? _pagecontroller;
  int currentIndex = 0;
  // ignore: annotate_overrides
  void initState() {
    _pagecontroller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pagecontroller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      alignment: Alignment.center,
      height: 500,
      width: double.infinity,
      color: Colors.grey,
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 450,
                width: 600,
                child: Image.network(
                  'https://rdentleu.sirv.com/modani/wysiwyg/home-testimonial.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                    width: 80,
                    child: Image.network(
                      ' https:www.modani.com/media/wysiwyg/testimonial-quote.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    height: 450,
                    child: PageView(
                      reverse: true,
                      onPageChanged: (int page) {
                        currentIndex = page;
                        setState(() {});
                      },
                      controller: _pagecontroller,
                      children: [
                        furniture(
                          title: Strings.oneTitle,
                          subTuitle: Strings.oneSubtitle,
                        ),
                        furniture(
                          title: Strings.twoTitle,
                          subTuitle: Strings.twoSubtitle,
                        ),
                        furniture(
                          title: Strings.threeTitle,
                          subTuitle: Strings.threeSubtitle,
                        ),
                        furniture(
                          title: Strings.fourTitle,
                          subTuitle: Strings.fourSubtitle,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: buildIndictor(),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget furniture({title, subTuitle}) {
    // ignore: avoid_unnecessary_containers
    return Container(
      // padding: const EdgeInsets.only(left: 50, right: 50, bottom: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(
                title,
                style: const TextStyle(color: Colors.black, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Text(
                subTuitle,
                style: const TextStyle(color: Colors.black, fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget indictor(bool isActive) {
    return AnimatedContainer(
      height: isActive ? 4 : 4,
      width: isActive ? 4 : 4,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        color: isActive ? Colors.black : Colors.grey,
        borderRadius: BorderRadius.circular(5),
      ),
      duration: const Duration(milliseconds: 300),
    );
  }

  List<Widget> buildIndictor() {
    List<Widget> indicators = [];
    for (int i = 0; i < 4; i++) {
      if (currentIndex == i) {
        indicators.add(indictor(true));
      } else {
        indicators.add(indictor(false));
      }
    }
    return indicators;
  }
}
