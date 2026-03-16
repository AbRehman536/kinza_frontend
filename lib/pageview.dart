import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'models/onBoarding.dart';
class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController pageController = PageController();
  List<onBoardingModel> onBoardingList = [
    onBoardingModel(image: "assets/images/first.png", title: "First Page"),
    onBoardingModel(image: "assets/images/second.png", title: "Second Page"),
    onBoardingModel(image: "assets/images/third.png", title: "Third Page"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              scrollDirection: Axis.vertical,
              itemCount: onBoardingList.length,
              controller: pageController,
              itemBuilder: (BuildContext context, int index) {
              return Column(children: [
                Image.asset(onBoardingList[index].image.toString()),
                Text(onBoardingList[index].title.toString(),style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.w900
                ),),

              ],);
            },),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){}, child: Text("Next")),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SmoothPageIndicator(
                controller: pageController,  // PageController
                count:  onBoardingList.length,
                effect:  ExpandingDotsEffect(),  // your preferred effect
                onDotClicked: (index){
                }
            ),
          )
        ],
      )
    );
  }
}
