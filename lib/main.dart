import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hello_world/screens/select_language.dart';
import 'package:hello_world/utils/constants.dart';

import 'package:hello_world/screens/onboarding.dart';
import 'package:hello_world/screens/splash_screen.dart';
import 'package:hello_world/screens/home.dart';
import 'package:hello_world/screens/daily_actions.dart';
import 'package:hello_world/screens/school_activities.dart';

void main() => {
      WidgetsFlutterBinding.ensureInitialized(),
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]),
      runApp(App()),
    };

var routes = <String, WidgetBuilder>{
  '/onboarding': (BuildContext context) => const OnboardingScreen(),
  '/select_language': (BuildContext context) => const SelectLanguageScreen(),
  '/home': (context) => const HomeScreen(),
  '/daily_actions': (context) => const DailyActionScreen(),
  '/school_activities': (context) => const SchoolActivitiesScreen(),
};

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: Constants.primaryColor,
        backgroundColor: Constants.backgroundColor,
      ),
      home: const SplashScreen(),
      routes: routes,
    );
  }
}
