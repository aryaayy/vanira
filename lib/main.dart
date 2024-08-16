import 'package:flutter/material.dart';
import 'package:vanira/pages/login_page.dart';
import 'package:vanira/pages/profile_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}


class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFFEEFFF2), 
          onPrimary: const Color(0xFF2E694B), 
          secondary: const Color(0xFF67A076), 
          tertiary: const Color(0xFFFE9F6A),
          onTertiary: const Color(0xFFF5BE9F)
        ),
        fontFamily: 'Montserrat',
        scaffoldBackgroundColor: Colors.white,
        dividerColor: Color(0xFFBDD7C3), // untuk divider pada container create account dan login
        splashColor: Color(0xFF67A076), // untuk 3 screen awal
      ),
    );
  }
}

mixin AppMixin{
  double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  FontWeight bold = FontWeight.w700;
  FontWeight semi = FontWeight.w600;
  FontWeight medium = FontWeight.w500;
  FontWeight regular = FontWeight.w400;
  Color primaryIcon = Color(0xFF2E694B);
  Color secondaryIcon = Color(0xFFFFC107);
  Color primaryContainer = Color(0xFFEEFFF2);
  Color secondaryContainer = Color(0xFFF4F3F2);
}