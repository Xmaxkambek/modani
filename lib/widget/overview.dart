import 'package:flutter/material.dart';

import 'footer.dart';
import 'modanifurniture.dart';
import 'reklamawidget.dart';

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
          child: GestureDetector(
            child: Image.network(
              'https://images.modani.com/modani/wysiwyg/map-image/hero-image-slide3-3-11.jpg',
              fit: BoxFit.fill,
            ),
          ),
        ),
        // ignore: prefer_const_constructors
        SliverToBoxAdapter(
          // ignore: prefer_const_constructors
          child: Column(
            children: const [
              ReklamaWidget(),
            ],
          ),
        ),
        // ignore: prefer_const_constructors
        SliverToBoxAdapter(
          child: const Furniture(),
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
