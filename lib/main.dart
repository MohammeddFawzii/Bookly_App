import 'package:bookly_app/featurs/book_details/views/book_details_view.dart';
import 'package:bookly_app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'featurs/home/views/home_viwe.dart';
import 'featurs/splash/views/splash_view.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.primaryColor,
      ),
      routes: {
        SplashView.id: (context) => const SplashView(),
        HomeView.id: (context) => const HomeView(),
      },
      initialRoute: SplashView.id,
    );
  }
}
