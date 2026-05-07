import 'package:flutter/material.dart';
import '../../common/widget/onboard_widget.dart';

class Onboarding extends StatefulWidget {
  final String? title;
  final String? subtitle;
  final String? imagePath;
  const Onboarding({super.key, this.title, this.subtitle, this.imagePath});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController _pageController = PageController();
  int currentIndex = 0;
  List<OnboardWidget> onboardData = [
    const OnboardWidget(title: '', subtitle: '', imagePath: "assets/Logo.png"),
    const OnboardWidget(
      title: "Workout Plan",
      subtitle:
          "Personalized workout programs to help users build strength, improve fitness, and stay active every day.",
      imagePath: "assets/onboard2.png",
    ),
    const OnboardWidget(
      title: "Diet Plan",
      subtitle:
          "Healthy meal guidance and nutrition planning to support fitness goals, improve eating habits, and maintain a balanced lifestyle.",
      imagePath: "assets/onboard3.png",
    ),
  ];
  void nextPage() {
    if (currentIndex < onboardData.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        itemCount: onboardData.length,
        itemBuilder: (context, index) {
          final item = onboardData[index];
          return OnboardWidget(
            title: item.title,
            subtitle: item.subtitle,
            imagePath: item.imagePath,
          );
        },
      ),
      floatingActionButton: SizedBox(
        height: 50,
        width: 100,
        child: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () {
            nextPage();
          },
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: const Icon(Icons.arrow_forward, color: Colors.white),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
