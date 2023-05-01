
import 'package:bookly_app/featurs/splash/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  static const id = "splash view";

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    delayAndNavigate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody(),
    );
  }

  void delayAndNavigate() {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.pushNamed(context, HomeView.id);
    });
  }
}
