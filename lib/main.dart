import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:identify/users/authentication/login_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Identify',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // useMaterial3: true,
      ),
      home: FutureBuilder(
        builder: (context, dataSnapShot) {
          return const LoginScreen();
        },
        future: null,
      ),
    );
  }
}
