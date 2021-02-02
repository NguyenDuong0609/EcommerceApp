import 'package:ecommerceApp/screens/cart/cart_screen.dart';
import 'package:ecommerceApp/screens/complete_profile/complete_profile_screen.dart';
import 'package:ecommerceApp/screens/details/details_screen.dart';
import 'package:ecommerceApp/screens/forgot_password/forgot_password_screen.dart';
import 'package:ecommerceApp/screens/home/home_screen.dart';
import 'package:ecommerceApp/screens/login_success/login_success_screen.dart';
import 'package:ecommerceApp/screens/otp/otp_screen.dart';
import 'package:ecommerceApp/screens/profile/profile_screen.dart';
import 'package:ecommerceApp/screens/sign_in/sign_in_screen.dart';
import 'package:ecommerceApp/screens/sign_up/sign_up_screen.dart';
import 'package:ecommerceApp/screens/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';

// We use name route
// All our routes will be availabe here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpscreen.routeName: (context) => SignUpscreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
};
