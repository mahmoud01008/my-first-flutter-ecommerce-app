import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'HomePage.dart';



class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(

          title: "Welcome to ShopEase!",
          body: "Your one-stop destination for a seamless online shopping experience.",
          image: Center(child: Icon(Icons.start, size: 100.0, color: Color(0xffea5427))),
          decoration: PageDecoration(
            pageColor: Color(0xfffae9e6),
            imagePadding: EdgeInsets.all(24),
            titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            bodyTextStyle: TextStyle(fontSize: 18),
          ),
        ),
        PageViewModel(
          title: "Browse & Discover",
          body: "Explore thousands of products from top categories with ease.",
          image: Center(child: Icon(Icons.star, size: 100.0, color: Color(0xffea5427))),
          decoration: PageDecoration(
            pageColor: Color(0xfffae9e6),
            imagePadding: EdgeInsets.all(24),
            titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            bodyTextStyle: TextStyle(fontSize: 18),
          ),
        ),
        PageViewModel(
          title: "Exclusive Offers",
          body: "Enjoy daily deals, flash sales, and special discounts tailored for you.",
          image: Center(child: Icon(Icons.featured_play_list, size: 100.0, color: Color(0xffea5427))),
          decoration: PageDecoration(
            pageColor: Color(0xfffae9e6),
            imagePadding: EdgeInsets.all(24),
            titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            bodyTextStyle: TextStyle(fontSize: 18),
          ),
        ),
        PageViewModel(
          title: "Fast & Secure Checkout",
          body: "Shop with confidence and get your items delivered quickly and securely.",
          image: Center(child: Icon(Icons.check_circle, size: 100.0, color: Color(0xffea5427))),
          decoration: PageDecoration(
            pageColor: Color(0xfffae9e6),
            imagePadding: EdgeInsets.all(24),
            titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            bodyTextStyle: TextStyle(fontSize: 18),
          ),
        ),
      ],
      onDone: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      },
      onSkip: () {

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      },
      showSkipButton: true,
      skip: Text("Skip"),
      next: Icon(Icons.arrow_forward),
      done: Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
      dotsDecorator: DotsDecorator(
        size: Size(10.0, 10.0),
        activeSize: Size(22.0, 10.0),
        color: Colors.black,
        activeColor: Color(0xffea5427),
        spacing: EdgeInsets.symmetric(horizontal: 3.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
    );
  }
}

