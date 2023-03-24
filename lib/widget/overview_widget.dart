// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:modani/widget/new_products_widget.dart';
import 'package:modani/widget/shop_by_room.dart';
import '../models/new_products.dart';
import 'footer.dart';
import 'most_popular_widget.dart';

class OverView extends StatefulWidget {
  const OverView({super.key});

  @override
  State<OverView> createState() => _OverViewState();
}

class _OverViewState extends State<OverView> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: InkWell(
            child: Image.network(
              'https://images.modani.com/modani/wysiwyg/map-image/hero-image-slide3-3-11.jpg',
              fit: BoxFit.fill,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 30,
          ),
        ),
        SliverToBoxAdapter(
          child: Row(
            children: [
              SizedBox(width: 40),
              Text(
                'NEW OUTDOOR ARRIVALS',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(width: 10),
              Expanded(child: line(1, 0)),
              SizedBox(width: 40),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: NewOutdoorProducts(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: 40),
        ),
        SliverToBoxAdapter(
          child: Row(
            children: [
              Expanded(
                flex: 25,
                child: InkWell(
                  child: Image.network(
                    'https://rdentleu.sirv.com/modani/wysiwyg/image-1.jpg',
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: const SizedBox(
                  height: 50,
                ),
              ),
              Expanded(
                flex: 25,
                child: InkWell(
                  child: Image.network(
                    'https://rdentleu.sirv.com/modani/wysiwyg/image-22.jpg',
                  ),
                ),
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 30,
          ),
        ),
        SliverToBoxAdapter(
          child: Row(
            children: [
              SizedBox(width: 40),
              Text(
                'MOST POPULAR',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(width: 10),
              Expanded(child: line(1, 0)),
              SizedBox(width: 40),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: MostPopularWidget(),
        ),
        SliverToBoxAdapter(
          child: InkWell(
            child: Image.network(
                'https://images.modani.com/modani/wysiwyg/map-image/product_feature_block_1920x736.jpg'),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 50,
          ),
        ),

        SliverToBoxAdapter(
          child: Column(
            children: [ShopByRoom(),
              SizedBox(height: 40),
              Text(
                '#modanifurniture',
                style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 233, 140, 1),
                    fontWeight: FontWeight.w200),
              ),
              SizedBox(height: 10),
              Text(
                'Follow us for the latest interior design trends, DIY tips and more!',
                style: TextStyle(
                  fontWeight: FontWeight.w100,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 7),
              Text(
                'Share your pictures with #modanifurniture',
                style: TextStyle(
                  fontWeight: FontWeight.w100,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'As featured in:',
                style: TextStyle(
                  fontSize: 25,
                  color: Color.fromARGB(255, 116, 115, 115),
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(width: 80),
                  Image.network(
                      'https://www.modani.com/media/wysiwyg/home-intouch-brand.jpg'),
                  Image.network(
                      'https://www.modani.com/media/wysiwyg/home-e-brand.jpg'),
                  Image.network(
                      'https://www.modani.com/media/wysiwyg/home-dujor-brand.jpg'),
                  Image.network(
                      'https://www.modani.com/media/wysiwyg/home-brand-bravo.jpg'),
                  Image.network(
                      'https://www.modani.com/media/wysiwyg/home-diy-brand.jpg'),
                  Image.network(
                      'https://www.modani.com/media/wysiwyg/home-appartment-brand.jpg'),
                  Image.network(
                      'https://www.modani.com/media/wysiwyg/home-hgtv-brand.jpg'),
                  SizedBox(width: 80),
                ],
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            height: 300,
            width: double.infinity,
            color: Colors.grey,
            child: const FooterWidget(),
          ),
        ),
      ],
    );
  }
}

Widget line(double height, double width) {
  return Container(
    height: height,
    width: width,
    color: Colors.black,
  );
}
