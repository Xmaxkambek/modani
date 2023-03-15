// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:modani/services/services.dart';
import 'package:modani/widget/app_Bar_widget.dart';
import 'package:modani/widget/overview_widget.dart';

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
          title: AppBarWidget(),       
        ),
        body: const OverView());
  }
}
