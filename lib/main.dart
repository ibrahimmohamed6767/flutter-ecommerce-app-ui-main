import 'package:ecommerce_app/route_generator.dart';
import 'package:ecommerce_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EcommerceApp());
}

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        brightness: Brightness.light,
        fontFamily: 'Gilroy',
        primarySwatch: Colors.purple,
        appBarTheme: AppBarTheme(
          elevation: 0,
          centerTitle: false,
          titleTextStyle: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(fontWeight: FontWeight.bold),
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Color(0xFF0F1327),
          primaryVariant: Color(0xFF0F0317),
          secondary: Color(0xFFEFC3FE),
          secondaryVariant: Color(0xFF9F83BE),
          onPrimary: Colors.white,
          surface: Colors.white,
          onSecondary: Colors.white,
          onSurface: Colors.black87,
          background: Colors.white,
          error: Colors.red,
          onBackground: Colors.black87,
          onError: Colors.white,
        ),
      ),
      initialRoute: SplashScreen.id,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
