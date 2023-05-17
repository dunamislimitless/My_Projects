import 'package:flutter/material.dart';
import 'package:my_project/forgotpassword.dart';
import 'package:my_project/home.dart';
import 'package:my_project/onboarding.dart';
import 'package:my_project/pageone.dart';
import 'package:my_project/pagetwo.dart';
import 'package:my_project/splash.dart';

class WrapperRoute extends StatefulWidget {
  const WrapperRoute({Key? key}) : super(key: key);

  @override
  State<WrapperRoute> createState() => _WrapperRouteState();
}

class _WrapperRouteState extends State<WrapperRoute> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const Splash(),
        '/onboarding': (context) => const Onboarding(),
        '/pageone': (context) => const PageOne(),
        '/pagetwo': (context) => const PageTwo(),
        '/forgotpassword': (context) => const ForgotPassword(),
        '/home': (context) => const SamuelHomePage(),
      },
    );
  }
}
