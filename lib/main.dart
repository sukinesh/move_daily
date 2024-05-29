import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_options.dart';

import 'package:move_daily/home.dart';
import 'package:move_daily/style.dart';
import 'package:move_daily/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const SplashScreenWidget()));
      } else {
        print('${user.email} is signed in!');
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const HomeWidget()));
      }
    });

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Colors.black, // Sets the caret color
          selectionColor:
              AppColors.brand.withOpacity(0.5), // Sets the selection color
          selectionHandleColor:
              AppColors.brand, // Sets the handle (tear drop) color
        ),
        useMaterial3: true,
      ),
      home: const SplashScreenWidget(),
    );
  }
}
