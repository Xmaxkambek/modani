import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modani/screens/Home_screen.dart';

void main() {
  runApp(
    MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          // primarySwatch: Colors.blue,
          textTheme:
              const TextTheme(titleSmall: TextStyle(color: Colors.black))),
      routerConfig: GoRouter(
        initialLocation: '/homescreen',
        routes: [
          GoRoute(
            path: '/homescreen',
            name: HomeScreen.routeName,
            builder: (context, state) => const HomeScreen(),
          )
        ],
      ),
    ),
  );
}
