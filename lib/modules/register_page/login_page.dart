import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pizza/modules/home/home.dart';
import 'package:pizza/modules/register_page/facebook.dart';
import 'package:pizza/modules/register_page/google.dart';
import 'package:pizza/modules/register_page/home_page.dart';
import 'package:pizza/modules/register_page/sign_up_page.dart';
import 'package:pizza/theme/app_colors.dart';
import 'package:pizza/theme/app_textstyle.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              children: [
                Container(
                    child: Image.asset(
                  'assets/cezar.webp',
                  fit: BoxFit.fill,
                )),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    children: [
                      // IconButton(
                      //     onPressed: () {
                      //       Navigator.pop(context);
                      //     },
                      //     icon: const Icon(
                      //       Icons.arrow_back_ios,
                      //       color: Colors.black,
                      //     )),
                      const SizedBox(
                        width: 25,
                      ),
                      const Text(
                        "Войти в систему",
                        style: AppTextStyle.bigTextStyle,
                      )
                    ],
                  ),
                ),
                // const SizedBox(height: 5),
                // const Text(
                //   'Введите почту и пароль,',
                //   style: AppTextStyle.smallTextStyle,
                // ),
                // const Text('чтобы войти',
                //     style: TextStyle(
                //         color: Color(0xff867878),
                //         fontSize: 14,
                //         fontWeight: FontWeight.w600)),
                const SizedBox(
                  height: 40,
                ),
                // const Padding(
                //   padding: EdgeInsets.only(right: 170),
                //   child: Text('Электронная почта',
                //       style: AppTextStyle.smallTextStyle),
                // ),
                // const SizedBox(
                //   height: 10,
                // ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 50,
                    width: 370,
                    child: TextFormField(
                      controller: emailController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Электронная почта не может быть пустой';
                        } else if (value != emailController) {
                          return 'Неправильная электронная почта';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.textFormFieldColor,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none),
                        hintText: 'Введите электронную почту',
                        hintStyle: TextStyle(
                            color: AppColors.smallTextColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                // const Padding(
                //   padding: EdgeInsets.only(right: 245),
                //   child: Text('Пароль', style: AppTextStyle.smallTextStyle),
                // ),
                // const SizedBox(
                //   height: 10,
                // ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 50,
                    width: 370,
                    child: TextFormField(
                      obscureText: _obscureText,
                      controller: passwordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Пароль не может быть пустым';
                        } else if (value != passwordController) {
                          return 'Неправильный пароль';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.textFormFieldColor,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                          child: Icon(
                            _obscureText
                                ? Icons.remove_red_eye_outlined
                                : Icons.visibility_off_outlined,
                            color: AppColors.smallTextColor,
                          ),
                        ),
                        hintText: 'Введите пароль',
                        hintStyle: const TextStyle(
                            color: AppColors.smallTextColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
                // const SizedBox(height: 50),
                // const Text(
                //   'Или войдите через',
                //   style: AppTextStyle.smallTextStyle,
                // ),
                // const SizedBox(
                //   height: 20,
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     InkWell(
                //       onTap: () {
                //         // setState(() {
                //         //   AuthService().signInWithGoogle();
                //         //   Navigator.push(
                //         //       context,
                //         //       MaterialPageRoute(
                //         //           builder: (context) => GooglePage()));
                //         // });
                //       },
                //       child: Image.asset(
                //         'assets/google.png',
                //         scale: 25,
                //       ),
                //     ),
                //     const SizedBox(
                //       width: 40,
                //     ),
                //     InkWell(
                //       onTap: () {
                //         setState(() {
                //           // Navigator.push(
                //           //     context,
                //           //     MaterialPageRoute(
                //           //         builder: (context) => FacebookPage()));
                //         });
                //       },
                //       child: Image.asset(
                //         'assets/facebook.png',
                //         scale: 12,
                //       ),
                //     ),
                //   ],
                // ),
                const SizedBox(height: 50),
                ElevatedButton(
                    onPressed: () async {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          });
                      FirebaseAuth.instance
                          .signInWithEmailAndPassword(
                              email: emailController.text,
                              password: passwordController.text)
                          .then((value) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                        // Navigator.pop(context);
                      });

                      // if (_formKey.currentState!.validate()) {
                      //   _formKey.currentState!.save();
                      //   Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //           builder: (context) => const GooglePage()));
                      // }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.elevatedButtonColor,
                        minimumSize: const Size(
                          370,
                          50,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    child: const Text(
                      'Войти',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    )),
                const SizedBox(height: 50),
                const Text(
                  "У вас нет учетной записи?",
                  style: AppTextStyle.smallTextStyle,
                ),
                const SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpPage()));
                  },
                  child: const Text(
                    'Зарегистрироваться',
                    style: AppTextStyle.priceTextStyle,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
