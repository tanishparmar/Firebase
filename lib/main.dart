import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/sign_in_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EXP6 MAP',
      home: const SignInScreen(),
    );
  }
}

// keytool -list -v -keystore "C:\Users\Tanish\.android\debug.keystore" -alias androiddebugkey -storepass android -keypass android