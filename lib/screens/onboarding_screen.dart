import 'package:flutter/material.dart';
import 'package:login_log/screens/introduction_screens/intro_1.dart';
import 'package:login_log/screens/introduction_screens/intro_2.dart';
import 'package:login_log/screens/introduction_screens/intro_3.dart';
import 'package:login_log/screens/login_Page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onboarding extends StatefulWidget {
  const onboarding({Key? key}) : super(key: key);

  @override
  _onboardingState createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  //Controller to keep track of which page we're on
  PageController _controller = PageController();

  //to keep track if we are on the last page or not
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 2);
            });
          },
          children: [
            intro1(),
            intro2(),
            intro3(),
          ],
        ),

        //dot indicators
        Container(
          alignment: Alignment(0, 0.75),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //skip
              onLastPage
                  //if true
                  ? GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return LoginPage();
                            },
                          ),
                        );
                      },
                      child: const SizedBox(
                        width: 100,
                        child: Text('  '),
                      ),
                    )
                  //if false
                  : GestureDetector(
                      onTap: () {
                        _controller.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                        );
                      },
                      child: const SizedBox(
                        width: 100,
                        child: Text('Skip'),
                      ),
                    ),
              
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: WormEffect(
                  dotColor: Colors.grey,
                  activeDotColor: Color.fromARGB(255, 135, 15, 15),
                ),
              ),

              //next(done)
              onLastPage
                  //if true
                  ? GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return LoginPage();
                            },
                          ),
                        );
                      },
                      child: const SizedBox(
                        width: 100,
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                            color: Color.fromARGB(255, 135, 15, 15),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  //if false
                  : GestureDetector(
                      onTap: () {
                        _controller.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                        );
                      },
                      child: const SizedBox(
                        width: 100,
                        child: Text('Next'),
                      ),
                    )
            ],
          ),
        )
      ],
    ));
  }
}
// Color.fromARGB(255, 135, 15, 15),