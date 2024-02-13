import 'package:flutter/material.dart';

class RunMyApp extends StatelessWidget {
  const RunMyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffEF1C26),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Welcome to',
                style: TextStyle(
                  fontSize: 39,
                  color: Colors.white,
                ),
              ),
            ),
            Center(
              child: Text(
                'Pizza House',
                style: TextStyle(
                  fontSize: 58,
                  color: Colors.white,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Our chefs are working 24/7 and are ready to accept visitors and at any time fo the day and night.',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            // Image.asset(
            //   'assets/girl.png',
            //   width: 735,
            //   height: 400,
            // )
          ],
        ),
      ),
    );
  }
}
