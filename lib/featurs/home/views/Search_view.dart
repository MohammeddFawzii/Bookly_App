import 'package:bookly_app/featurs/home/views/home_viwe.dart';
import 'package:bookly_app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/utils/api_servises.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  static const id = "Search view";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: AppColors.iconsColor),
        backgroundColor: AppColors.primaryColor,
        title: const Text(
          "Search Area",
          style: TextStyle(color: AppColors.iconsColor),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          width: 200,
          child: TextField(
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
            decoration: const InputDecoration(
                labelText: "Search Category",
                labelStyle: TextStyle(color: Colors.white, fontSize: 25)),
            onSubmitted: (value) {
              apiKey = value;
              Navigator.pushNamed(context, HomeView.id);
            },
          ),
        ),
      ),
    );
  }
}
