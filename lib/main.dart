import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pizza/modules/birinchi_page/view/first_list.dart';
import 'package:pizza/modules/category_page/category_page.dart';
import 'package:pizza/modules/register_page/auth_page/auth_page.dart';
import 'package:pizza/modules/register_page/login_page.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:pizza/modules/register_page/initial_page.dart';
import 'package:pizza/modules/register_page/sign_up_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const FirstPage(),
    );
  }
}
