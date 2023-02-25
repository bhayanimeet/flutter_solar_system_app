import 'dart:async';
import 'package:flutter/material.dart';
import 'package:solar_system_information/views/screens/detail.dart';
import 'package:solar_system_information/views/screens/planet.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreen(),
        'planet': (context) => const Planet(),
        'detail': (context) => const Detail(),
      },
    ),
  );
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation animation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    animation = Tween<double>(begin: -470, end: 0).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeInOut));

    animationController.forward();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacementNamed(context, 'planet'),
    );
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedBuilder(
                    animation: animationController,
                    builder: (context, widget) {
                      return Transform.translate(
                        offset: Offset(0, animation.value),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/solar.jpg',
                              height: 300,
                              width: 300,
                            ),
                            Text(
                              "Solar System",
                              style: TextStyle(
                                color: Colors.indigo.shade600,
                                fontSize: 25,
                                height: -2,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                const SizedBox(height: 25),
                const CircularProgressIndicator(
                  strokeWidth: 3,
                  color: Colors.black,
                ),
              ],
            ),
      ),
    );
  }
}
