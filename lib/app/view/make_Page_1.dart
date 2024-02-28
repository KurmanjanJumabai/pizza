import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:pizza/app/view/ColorsSys.dart';

// ignore: must_be_immutable
class makePage_1 extends StatelessWidget {
  makePage_1({
    required this.title,
    required this.content,
    required this.image,
    required this.reverse,
    super.key,
  });
  String image;
  String title;
  String content;
  bool reverse = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          !reverse
              ? Column(
                  children: <Widget>[
                    FadeInUp(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: Image.asset(
                          image,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                )
              : const SizedBox(),
          FadeInUp(
              duration: const Duration(milliseconds: 900),
              child: Text(
                title,
                style: TextStyle(
                    color: ColorSys.primary,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              )),
          const SizedBox(
            height: 20,
          ),
          FadeInUp(
              duration: const Duration(milliseconds: 1200),
              child: Center(
                child: Text(
                  content,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: ColorSys.gray,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              )),
          reverse
              ? Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Image.asset(image),
                    ),
                  ],
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
