import 'package:flutter/material.dart';
import 'package:modani/widget/appBarwidget.dart';
import 'package:modani/widget/footer.dart';

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
        backgroundColor: Colors.white,
        toolbarHeight: 150,
        title: const AppBarWidget(),
      ),
      body: Column(
        children: [
          const Spacer(),
          Container(
            height: 300,
            width: double.infinity,
            color: Colors.grey,
            child: const FooterWidget(),
          )
        ],
      ),
    );
  }
}
