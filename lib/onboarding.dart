import 'package:flutter/material.dart';
import 'package:flutter_onboard/flutter_onboard.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Stack(
            children: [
              Positioned(
                  top: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.7,
                    width: MediaQuery.of(context).size.width,
                    child: Coursel(),
                  )),
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color(0XFF1A936F),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          //  jjkjjkjkjkjjjk
                          child: MaterialButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/pagetwo');
                              },
                              child: const Text(
                                "LOGIN",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              )),
                        ),
                        SizedBox(
                          height: 30,
                          //bbn
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          decoration: BoxDecoration(
                              color: const Color(0XFFE5E5E5),
                              borderRadius: BorderRadius.circular(3)),
                          child: MaterialButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/pageone');
                              },
                              child: const Text(
                                "SIGN UP",
                                style: TextStyle(
                                    color: Color(0XFF114B5F), fontSize: 14),
                              )),
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class Coursel extends StatefulWidget {
  const Coursel({Key? key}) : super(key: key);

  @override
  State<Coursel> createState() => _CourselState();
}

class _CourselState extends State<Coursel> {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      width: MediaQuery.of(context).size.width,
      child: OnBoard(
        pageController: _pageController,
        // Either Provide onSkip Callback or skipButton Widget to handle skip state
        onSkip: () {
          // print('skipped');
        },
        // Either Provide onDone Callback or nextButton Widget to handle done state
        onDone: () {
          // print('done tapped');
        },
        onBoardData: onBoardData,
        titleStyles: const TextStyle(
          color: Color(0XFF666666),
          fontSize: 17,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.15,
        ),
        // descriptionStyles: TextStyle(
        //   fontSize: 16,
        //   color: Colors.brown.shade300,
        // ),
        pageIndicatorStyle: const PageIndicatorStyle(
          width: 100,
          inactiveColor: Color(0XFF1A936F),
          activeColor: Color(0XFF1A936F),
          inactiveSize: Size(8, 8),
          activeSize: Size(12, 12),
        ),
        // Either Provide onSkip Callback or skipButton Widget to handle skip state
        skipButton: TextButton(
          onPressed: () {
            // print('skipButton pressed');
          },
          child: const Text(
            "",
            style: TextStyle(color: Colors.deepOrangeAccent),
          ),
        ),
        // Either Provide onDone Callback or nextButton Widget to handle done state
        nextButton: OnBoardConsumer(
          builder: (context, ref, child) {
            final state = ref.watch(onBoardStateProvider);
            return InkWell(
              onTap: () => _onNextTap(state),
              child: Container(
                width: 379,
                height: 44,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.transparent,
                ),
                child: Text(
                  state.isLastPage ? "" : "",
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _onNextTap(OnBoardState onBoardState) {
    if (!onBoardState.isLastPage) {
      _pageController.animateToPage(
        onBoardState.page + 1,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOutSine,
      );
    } else {
      //print("nextButton pressed");
    }
  }
}

final List<OnBoardModel> onBoardData = [
  const OnBoardModel(
    title:
        "vfx logistics brings you closer to \n your customers and blahh blahh here.",
    description: "",
    imgUrl: "assets/images/b1.png",
  ),
  const OnBoardModel(
    title:
        "vfx logistics brings you closer to \n  your customers and blahh blahh here.",
    description: "",
    imgUrl: 'assets/images/b2.png',
  ),
  const OnBoardModel(
    title:
        "vfx logistics brings you closer to \n your customers and blahh blahh here.",
    description: "",
    imgUrl: 'assets/images/b3.png',
  ),
];
