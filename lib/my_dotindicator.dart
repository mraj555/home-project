import 'package:flutter/material.dart';
import 'package:home_project/my_adaptive.dart';
import 'package:home_project/my_animatedcrossfade.dart';
import 'package:home_project/my_bottomnavigationbar.dart';
import 'package:home_project/my_choicechip.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyDotIndicator extends StatefulWidget {
  const MyDotIndicator({Key? key}) : super(key: key);

  @override
  _MyDotIndicatorState createState() => _MyDotIndicatorState();
}

class _MyDotIndicatorState extends State<MyDotIndicator> {
  var _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 15,
          title: Text('Dot Indicator'),
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 500,
              child: PageView(
                controller: _controller,
                children: [
                  MyAdaptive(),
                  MyAnimatedCrossfade(),
                  MyBottomNavigationBar(),
                  MyChoiceChip(),
                ],
              ),
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 4,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.black,
                dotColor: Colors.black.withOpacity(0.1),
                dotHeight: 10,
                dotWidth: 10,
              ),
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 4,
              effect: SwapEffect(
                activeDotColor: Colors.black,
                dotColor: Colors.black.withOpacity(0.1),
                dotHeight: 10,
                dotWidth: 10,
              ),
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 4,
              effect: JumpingDotEffect(
                activeDotColor: Colors.black,
                dotColor: Colors.black.withOpacity(0.1),
                dotHeight: 10,
                dotWidth: 10,
                verticalOffset: 30,
              ),
            ),
            SmoothPageIndicator(
                controller: _controller,
                count: 4,
                effect: ColorTransitionEffect(
                  dotWidth: 10,
                  dotHeight: 10,
                  dotColor: Colors.black.withOpacity(0.1),
                  activeDotColor: Colors.black,
                )),
            SmoothPageIndicator(
              controller: _controller,
              count: 4,
              effect: WormEffect(
                activeDotColor: Colors.black,
                dotColor: Colors.black.withOpacity(0.1),
                dotHeight: 10,
                dotWidth: 10,
              ),
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 4,
              effect: ScaleEffect(
                activeDotColor: Colors.black,
                dotColor: Colors.black.withOpacity(0.1),
                dotHeight: 10,
                dotWidth: 10,
              ),
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 4,
              effect: ScrollingDotsEffect(
                activeDotColor: Colors.black,
                dotColor: Colors.black.withOpacity(0.1),
                dotHeight: 10,
                dotWidth: 10,
              ),
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 4,
              effect: SlideEffect(
                activeDotColor: Colors.black,
                dotColor: Colors.black.withOpacity(0.1),
                dotHeight: 10,
                dotWidth: 10,
              ),
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 4,
              effect: CustomizableEffect(
                dotDecoration: DotDecoration(color: Colors.grey),
                activeDotDecoration: DotDecoration(
                  color: Colors.black,
                  rotationAngle: 50,
                  dotBorder: DotBorder(
                      color: Colors.green,
                      padding: 3,
                      type: DotBorderType.solid),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
