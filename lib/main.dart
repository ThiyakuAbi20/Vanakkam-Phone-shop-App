import 'package:e_commerce/Provider/cart_provider.dart';
import 'package:e_commerce/screens/nav_bar_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart'; // Make sure you import this

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context)=> MultiProvider(
    
      providers: [
       ChangeNotifierProvider(create: (_) => CartProvider(),
       )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false, // Fixed typo
        theme: ThemeData(
          textTheme: GoogleFonts.mulishTextTheme(), // Fixed syntax
        ),
        home: const BottomNavBar(),
      ),
    );
    
  }

