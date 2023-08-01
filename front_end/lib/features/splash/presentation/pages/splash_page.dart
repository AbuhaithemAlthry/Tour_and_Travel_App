import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:front_end/core/utils/media_query.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      GoRouter.of(context).go('/onboarding');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/svg/splash.jpg',
              width: UIConverter.getComponentHeight(context, 250),
              height: UIConverter.getComponentHeight(context, 250),
            ),
            const SizedBox(height: 16),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(
                  fontSize: UIConverter.getComponentHeight(context, 35),
                  color: const Color(0xFF0084E3),
                  fontFamily: 'Urbanist',
                  height: 1.0,
                ),
                children: const <TextSpan>[
                  TextSpan(text: 'Welcome to '),
                  TextSpan(
                    text: 'Travel and Tour',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
