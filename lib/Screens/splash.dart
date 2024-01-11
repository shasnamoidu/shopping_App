import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';


import 'package:shopping/home/view/products.dart';


class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return  AnimatedSplashScreen(duration: 7,
        splashIconSize: 200,
        splashTransition: SplashTransition.rotationTransition,
        // pageTransitionType: pagetransitiont,
          splash: const CircleAvatar(
            backgroundImage: AssetImage('assets/images/logo.png'),
            radius: 100,
          ),
          nextScreen:  ProductPage());
    
  }
}
