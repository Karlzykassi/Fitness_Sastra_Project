import 'package:fitness_application/common/widget/plan_widget.dart';
import 'package:fitness_application/common/widget/take_action_widget.dart';
import 'package:fitness_application/screen/workout_screen/workout_screen.dart';
import 'package:flutter/material.dart';
import 'package:fitness_application/common/font_style/text_style.dart ';
import 'diet_screen.dart';
import 'package:fitness_application/common/color/color.dart';
// import 'package:flutter/rendering.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            elevation: 8,
            expandedHeight: 100,
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            centerTitle: true,
            toolbarHeight: 100,

            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),

            title: Text(
              'FitnessX',
              style: TextStyles.title.copyWith(color: Colors.white),
            ),

            leading: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: IconButton(
                icon: const Icon(Icons.menu, color: Colors.white, size: 36),
                onPressed: () {},
              ),
            ),

            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: IconButton(
                  icon: Icon(
                    Icons.person_outline,
                    color: Colors.white,
                    size: 36,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),

          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: 25),
                Text("Today Plan", style: TextStyles.title),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: PlanWidget(
                          isLeft: true,
                          title: "Workout Plan",
                          description1: "1. 30 mins Warm-up",
                          description2: "2. 45 mins Strength Training",
                          description3: "3. 20 mins Flexibility",
                          description4: "4. 15 mins Cool-down",
                          description5: "5. 20 mins Cardio",
                        ),
                      ),
                      Expanded(
                        child: PlanWidget(
                          isLeft: false,
                          title: "Diet Plan",
                          description1: "1. 300g Chicken Breast",
                          description2: "2. 1 cup Brown Rice",
                          description3: "3. 1 cup Steamed Vegetables",
                          description4: "4. 1 tbsp Olive Oil",
                          description5: "5. 1 glass Water",
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        spacing: 20,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text("Take Action", style: TextStyles.title),
                          ),
                          Text("Training", style: TextStyles.subtitle),
                          TakeActionWidget(
                            h: h,
                            title: "\"Click here\" \nto start workout",
                            targetScreen:
                                WorkoutScreen(), // Replace with actual workout screen
                            imagePath: "assets/onboard2.png",
                          ),
                          Text("Diet", style: TextStyles.subtitle),
                          TakeActionWidget(
                            h: h,
                            title: "\"Click here\" \nto start diet",
                            targetScreen:
                                DietScreen(), // Replace with actual diet screen
                            imagePath: "assets/onboard3.png",
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
