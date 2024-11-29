import 'package:dr_app/provider/cart_provider.dart';
import 'package:dr_app/screens/welcomeScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Import Google Fonts package
import '../provider/auth_provider.dart';
import 'package:provider/provider.dart';
//import 'js_interop_utils.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyBLpFhV9aXaQ9nTv2Ss5hjWWTStvT79tB4",
        authDomain: "health-6cd34.firebaseapp.com",
        projectId: "health-6cd34",
        storageBucket: "health-6cd34.firebasestorage.app",
        messagingSenderId: "136918825702",
        appId: "1:136918825702:web:0ab76207ffa616dae95927",
        measurementId: "G-028CYHGJP3"),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => CartProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const WelcomeScreen(),
        title: "Health_Diagnose",
        theme: ThemeData(
          primaryColor: const Color(0xFF3E69FE), // Set the primary color
          textTheme: GoogleFonts
              .openSansTextTheme(), // Set the font using Google Fonts
          appBarTheme: const AppBarTheme(
            color: Color(0xFF3E69FE), // Set the appbar background colo
          ),
        ),
      ),
    );
  }
}
