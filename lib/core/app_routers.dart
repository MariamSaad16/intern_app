import 'package:go_router/go_router.dart';
import 'package:intern_app/features/login/views/confirm1.dart';
import 'package:intern_app/features/login/views/confirm2.dart';
import 'package:intern_app/features/login/views/signin.dart';
import 'package:intern_app/features/login/views/signup.dart';
import 'package:intern_app/features/login/views/welcome_page.dart';
import 'package:intern_app/features/onboarding/views/on_boarding.dart';
import 'package:intern_app/features/splash/splash.dart';

final GoRouter appRouter = GoRouter(routes: [
 GoRoute(
      path: '/',
      builder: (context, state) {
        return Splash();
      },
    ),

    GoRoute(
      path: '/onboarding1',
      builder: (context, state) {
        return OnBoarding1();
      },
    ),

    GoRoute(
      path: '/onboarding2',
      builder: (context, state) {
        return OnBoarding2();
      },
    ),

    GoRoute(
      path: '/onboarding3',
      builder: (context, state) {
        return OnBoarding3();
      },
    ),

    GoRoute(
      path: '/login',
      builder: (context, state) {
        return Signin();
      },
    ),

    GoRoute(
      path: '/signup',
      builder: (context, state) {
        return Signup();

      },
    ),


  GoRoute(
      path: '/welcome',
      builder: (context, state) {
        return WelcomePage();

      },
    ),

      GoRoute(
      path: '/confirm1',
      builder: (context, state) {
        return Confirm1();

      },
    ),

     GoRoute(
      path: '/confirm2',
      builder: (context, state) {
        return Confirm2();

      },
    ),



]);
