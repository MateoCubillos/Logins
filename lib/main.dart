import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logins/pantallas/pantallas.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calendar',    //titulo de la aplicacion
      theme: ThemeData(
        textTheme:
            GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      initialRoute: 'Login',    //ruta inicial
      routes: {
        'Login':(context) => const LoginScreen(),
        'Clave olvidada':(context) =>  ClaveOlvidada(),
        'Crea tu cuenta':(context) =>  NuevaCuenta(),

      },
    );
  }
}
