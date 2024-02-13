import 'package:flutter/material.dart';
import 'package:pizza/modules/register_page/login_page.dart';
import 'package:pizza/modules/register_page/sign_up_page.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 50, right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.arrow_back_ios),
              Image.asset('assets/pizza.jpg')
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Image.asset(
          'assets/girl.jpg',
        ),
        // DotsIndicator(
        //   dotsCount: 3,
        //   // position: _currPageValue.toInt(),
        //   decorator: DotsDecorator(
        //     activeColor: Color(0xffef1c26),
        //     color: Color(0xffed888d),
        //     size: const Size.square(9.0),
        //     activeSize: const Size(18.0, 9.0),
        //     activeShape: RoundedRectangleBorder(
        //         borderRadius: BorderRadius.circular(5.0)),
        //   ),
        // ),
        SizedBox(
          height: 30,
        ),
        ElevatedButton(
            onPressed: () {
              {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              }
            },
            style: ElevatedButton.styleFrom(
                shadowColor: const Color(0xffef1c26),
                elevation: 10,
                backgroundColor: const Color(0xffEF1C26),
                minimumSize: const Size(
                  320,
                  50,
                ),
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(3))),
            child: const Text(
              'Войти',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            )),
        const SizedBox(height: 30),
        ElevatedButton(
            onPressed: () {
              {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignUpPage()));
              }
            },
            style: ElevatedButton.styleFrom(
                side: BorderSide(color: Color(0xffef1c26), width: 0.5),
                shadowColor: const Color(0xffed888d),
                elevation: 10,
                backgroundColor: const Color(0xffed888d),
                minimumSize: const Size(
                  320,
                  50,
                ),
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    3,
                  ),
                )),
            child: const Text(
              'Регистрация',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            )),
        const SizedBox(height: 30),
      ],
    ));
  }
}
