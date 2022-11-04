import 'package:flutter/material.dart';

import 'views/home_view.dart';

void main() {
  runApp(const WayChefApp());
}

class WayChefApp extends StatelessWidget {
  const WayChefApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
