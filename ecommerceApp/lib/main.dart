import 'package:ecommerceApp/routes.dart';
import 'package:ecommerceApp/screens/home/components/categories.dart';
import 'package:ecommerceApp/screens/productFollowCategory/productFollowCategory.dart';
import 'package:ecommerceApp/screens/profile/profile_screen.dart';
import 'package:ecommerceApp/theme.dart';
import 'package:flutter/material.dart';
import 'package:ecommerceApp/constants.dart';
import 'package:ecommerceApp/screens/splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      // home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
