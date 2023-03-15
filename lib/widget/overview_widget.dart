// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:modani/widget/shop_by_room.dart';

import 'footer.dart';
import 'modani_furniture.dart';
import 'ads_widget.dart';

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
            height: 40,
          ),
        ),
        SliverToBoxAdapter(
          child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                width: 35,
              ),
              Text(
                'NEW OUTDOOR ARRIVALS',
                style: TextStyle(fontSize: 23),
              ),
              Divider(
                height: 2,
                color: Colors.black,
              )
            ],
          ),
        ),
        // SliverToBoxAdapter(
        //   child: SizedBox(
        //     height: 40,
        //   ),
        // ),
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
            height: 50,
          ),
        ),
        SliverToBoxAdapter(
          child: InkWell(
            child: Image.network(
                'https://images.modani.com/modani/wysiwyg/map-image/product_feature_block_1920x736.jpg'),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 100,
          ),
        ),
        // SliverToBoxAdapter(
        //   // ignore: prefer_const_constructors
        //   child: Column(
        //     children: const [
        //       ReklamaWidget(),
        //     ],
        //   ),
        // ),
        // SliverToBoxAdapter(
        //   child: const Furniture(),
        // ),
        SliverToBoxAdapter(
          child: ShopByRoom(),
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
