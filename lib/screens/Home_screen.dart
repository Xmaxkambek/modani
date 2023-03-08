import 'package:flutter/material.dart';
import 'package:modani/widget/appBarwidget.dart';
import 'package:modani/widget/footer.dart';
import 'package:modani/widget/overview.dart';

import '../widget/reklamawidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const routeName = 'home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          primary: true,
          shadowColor: Colors.white,
          backgroundColor: Colors.white,
          toolbarHeight: 130,
          title: const AppBarWidget(),
        ),
        body: const OverView());
  }
}
