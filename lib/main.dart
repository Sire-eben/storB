import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sellers_app/global/global.dart';
import 'package:sellers_app/splashScreen/splashscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences = await SharedPreferences.getInstance();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Breej Merchant',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
