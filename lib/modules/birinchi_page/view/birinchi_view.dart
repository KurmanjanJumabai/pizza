import 'package:flutter/material.dart';
import 'package:pizza/modules/birinchi_page/view/ekinchi_view.dart';

class BirinchiView extends StatelessWidget {
  const BirinchiView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEF1C26),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Image.asset(
            //   'assets/pizza.png',
            //   width: 300,
            //   height: 316,
            // ),
            const SizedBox(
              height: 100,
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
