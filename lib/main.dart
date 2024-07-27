
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nba/pages/homepage.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,

      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

    );
  }
  final _router = GoRouter(initialLocation: '/', routes: [
      GoRoute(
      //name: 'Home',
      name: HomePage.routeName,
      path: '/',
      builder: (context, state) =>  HomePage(),
  )
  ]);
}

