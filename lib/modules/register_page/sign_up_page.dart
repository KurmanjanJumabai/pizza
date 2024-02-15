import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pizza/modules/home/home.dart';
import 'package:pizza/modules/register_page/facebook.dart';
import 'package:pizza/modules/register_page/google.dart';
import 'package:pizza/modules/register_page/home_page.dart';
import 'package:pizza/theme/app_colors.dart';
import 'package:pizza/theme/app_textstyle.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<SignUpPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool? isChecked = false;
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        )),
                    const SizedBox(width: 40),
                    const Center(
                      child: Text(
                        "Регистрация",
                        style: AppTextStyle.bigTextStyle,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Заполните данные и создайте',
                style: AppTextStyle.smallTextStyle,
              ),
              const Text(
                'Новый Аккаунт',
                style: AppTextStyle.smallTextStyle,
              ),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 170),
                child: Text(
                  'Имя Пользователя',
                  style: AppTextStyle.smallTextStyle,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 50,
                  width: 320,
                  child: Material(
                    elevation: 10,
                    shadowColor: AppColors.elevatedButtonColor,
                    child: TextFormField(
                      controller: nameController,

                      // validator: (value) {
                      //   if (value == null || value.isEmpty) {
                      //     return 'Password cannot be empty';
                      //   } else if (value != password) {
                      //     return 'Wrong password';
                      //   }
                      //   return null;
                      // },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.textFormFieldColor,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide: const BorderSide(
                            color: AppColors.elevatedButtonColor,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: const BorderSide(
                                color: AppColors.elevatedButtonColor,
                                width: 0)),
                        hintText: 'Введите имя',
                        hintStyle: AppTextStyle.smallTextStyle,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 165),
                child: Text(
                  'Электронная почта',
                  style: AppTextStyle.smallTextStyle,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 50,
                  width: 320,
                  child: Material(
                    elevation: 10,
                    shadowColor: AppColors.elevatedButtonColor,
                    child: TextFormField(
                      controller: emailController,

                      // validator: (value) {
                      //   if (value == null || value.isEmpty) {
                      //     return 'Password cannot be empty';
                      //   } else if (value != password) {
                      //     return 'Wrong password';
                      //   }
                      //   return null;
                      // },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.textFormFieldColor,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide: const BorderSide(
                            color: AppColors.elevatedButtonColor,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: const BorderSide(
                                color: AppColors.elevatedButtonColor,
                                width: 0)),
                        hintText: 'Введите электронную почту',
                        hintStyle: AppTextStyle.smallTextStyle,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 245),
                child: Text(
                  'Пароль',
                  style: AppTextStyle.smallTextStyle,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 50,
                  width: 320,
                  child: Material(
                    elevation: 10,
                    shadowColor: AppColors.elevatedButtonColor,
                    child: TextFormField(
                      obscureText: _obscureText,
                      controller: passwordController,
                      // validator: (value) {
                      //   if (value == null || value.isEmpty) {
                      //     return 'Password cannot be empty';
                      //   } else if (value != password) {
                      //     return 'Wrong password';
                      //   }
                      //   return null;
                      // },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.textFormFieldColor,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide: const BorderSide(
                            color: AppColors.elevatedButtonColor,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: const BorderSide(
                                color: AppColors.elevatedButtonColor,
                                width: 0)),
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
                            // ignore: prefer_const_constructors
                            color: Color(0xff827777),
                          ),
                        ),
                        hintText: 'Введите пароль',
                        hintStyle: AppTextStyle.smallTextStyle,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        });
                    FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                            email: emailController.text,
                            password: passwordController.text)
                        .then((value) {
                      print('Created New Account');
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    }).onError((error, stackTrace) {
                      print('Error ${error.toString()}');
                    });
                    Navigator.pop(context);
                    // if (_formKey.currentState!.validate()) {
                    //   _formKey.currentState!.save();
                    //   Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //           builder: (context) => const GooglePage()));
                    // }

                    // if (_formKey.currentState!.validate()) {
                    //   _formKey.currentState!.save();
                    //   Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //           builder: (context) => const GooglePage()));
                    // }
                  },
                  style: ElevatedButton.styleFrom(
                      shadowColor: AppColors.elevatedButtonColor,
                      elevation: 10,
                      backgroundColor: AppColors.elevatedButtonColor,
                      minimumSize: const Size(
                        320,
                        50,
                      ),
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(3))),
                  child: const Text(
                    'Зарегистрироваться',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
