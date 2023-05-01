import 'package:bookly_app/featurs/home/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const id = "home view";

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: HomeViewBody(),
    ));
  }
}
