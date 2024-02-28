import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pizza/app/view/second_list.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const RunMyApp()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEF1C26),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/image_1.png',
              width: 300,
              height: 316,
            ),
            const SizedBox(
              height: 250,
            ),
            IconButton(
                icon: const Icon(
                  Icons.restart_alt,
                  size: 60,
                  color: Colors.blueGrey,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RunMyApp()));
                })
          ],
        ),
      ),
    );
  }
}
