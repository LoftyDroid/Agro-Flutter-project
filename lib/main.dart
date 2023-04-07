import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modernlogintute/constants/colors.dart';
import 'package:modernlogintute/pages/auth_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:modernlogintute/pages/home_screen.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        primaryColor: greyBg,
        splashColor: primaryGreenBg,
        highlightColor: primaryGreenBg,
        backgroundColor: greyBg,
        appBarTheme: const AppBarTheme(backgroundColor: primaryGreen),
        floatingActionButtonTheme:
            const FloatingActionButtonThemeData(backgroundColor: primaryGreen),
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: GoRouter(routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const AuthPage(),
        ),
        GoRoute(
          path: '/home',
          builder: (context, state) => HomeScreen(),
        ),
      ]),
    );
  }
}
