import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../widgets/onboarding.dart';

// ignore: must_be_immutable
class OnboardingPage extends StatelessWidget {
  OnboardingPage({super.key});
  PageController _page = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: Stack(
        children: [
          Container(
            alignment: const Alignment(0, 0.75),
            child: SmoothPageIndicator(
              controller: _page,
              count: 4,
            ),
          ),
          PageView(
            controller: _page,
            children: const [
              Onboarding(
                title: "Think about a trip",
                subtitle:
                    "Help users plan their ideal trip by providing tips on budget, travel preferences, and destination choices.",
                image: "onboarding-1.svg",
                islast: false,
                width: 375,
                height: 260,
              ),
              Onboarding(
                title: "Think about the Place and hotel",
                subtitle:
                    "Choose a perfect place to stay by researching accommodations, location, and amenities that fit their budget.",
                image: "onboarding-2.jpg",
                islast: false,
                width: 243,
                height: 300,
              ),
              Onboarding(
                title: "Think about the date",
                subtitle:
                    "Help users pick a convenient date by considering factors like weather, work schedules, and school schedules.",
                image: "onboarding-3.svg",
                islast: false,
                width: 350,
                height: 350,
              ),
              Onboarding(
                title: "Enjoy the trip",
                subtitle:
                    "Encourage users to prepare for their trip and have fun by bringing necessary travel documents and being open to new experiences",
                image: "onboarding-4.svg",
                islast: true,
                width: 300,
                height: 190,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
