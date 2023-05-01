import 'package:flutter/material.dart';
import '../../../utils/app_images.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    faddingAnimation();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Opacity(
        opacity: animationController.value,
        child: const Image(
          image: AssetImage(AppImages.appLogo),
        ),
      ),
    );
  }

  void faddingAnimation() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 800));
    animationController.addListener(() {
      setState(() {});
    });
    animationController.forward();
    animationController.repeat(reverse: true);
  }
}
