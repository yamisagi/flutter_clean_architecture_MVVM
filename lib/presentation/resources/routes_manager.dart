import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/presentation/forgot_password/forgot_password.dart';
import 'package:flutter_clean_architecture/presentation/login/login.dart';
import 'package:flutter_clean_architecture/presentation/main/main_view.dart';
import 'package:flutter_clean_architecture/presentation/onboarding/onboarding.dart';
import 'package:flutter_clean_architecture/presentation/register/register.dart';
import 'package:flutter_clean_architecture/presentation/resources/strings_manager.dart';
import 'package:flutter_clean_architecture/presentation/splash/splash.dart';
import 'package:flutter_clean_architecture/presentation/store_details/store_details.dart';

class Routes {
  static const String splashRoute =
      '/'; // This is the first route when the app starts
  static const String onBoardingRoute = '/onBoarding';
  static const String loginRoute = '/login';
  static const String registerRoute = '/register';
  static const String forgotPasswordRoute = '/forgotPassword';
  static const String mainRoute = '/main';
  static const String storeDetailsRoute = '/storeDetails';
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => const MainView());
      case Routes.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) => const StoreDetails());
      default:
        return _undefinedRoute();
    }
  }

  static Route<dynamic> _undefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.unDefinedRoute),
        ),
        body: const Center(
          child: Text(AppStrings.unDefinedRoute),
        ),
      ),
    );
  }
}
