import "package:ecom_app/screens/navbar_screen.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecom App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.mulishTextTheme()),
      home: const BottomNavBar(),
    );
  }
}
