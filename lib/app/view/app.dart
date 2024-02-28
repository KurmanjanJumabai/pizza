import 'package:flutter/material.dart';

import 'package:pizza/modules/birinchi_page/view/first_list.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FirstPage(),
      //  home: BirinchiView(),
    );
  }
}
