import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../fake_screens/IELTS_screen.dart';
import '../fake_screens/Python_screen.dart';
import '../fake_screens/app_dev_screen.dart';
import '../fake_screens/web_dev_screen.dart';
import '../utility/carousal_utility.dart';

class Carousel extends StatefulWidget {
  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  late final CarouselController _controller;

  @override
  void initState() {
    super.initState();
    _controller = CarouselController();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final isLandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return ListView(
      children: <Widget>[
        Stack(
          children: [
            CarouselSlider(
              carouselController: _controller,
              items: [
                 CarUtility(
                  image1: 'assets/images/appdev.png',
                  text1: 'App Development with Flutter',
                  text2: 'App Development',
                  image2: 'assets/images/aditya_thakur.png',
                  text3: 'Aditya Thakur',
                  route: App.routename,
                ),
                CarUtility(
                  image1: 'assets/images/Python.png',
                  text1: 'Python & Django for Beginners',
                  text2: 'Programming',
                  image2: 'assets/images/logo.png',
                  text3: 'Cipher Schools',
                  route: Python.routename,
                ),
                CarUtility(
                  image1: 'assets/images/IELTS.png',
                  text1: 'Free mock IELTS/TOEFL',
                  text2: 'Assesment Test',
                  image2: 'assets/images/logo1.png',
                  text3: 'Languify',
                  route: IELTS.routename,
                ),
                CarUtility(
                  image1: 'assets/images/webdev.png',
                  text1: 'Full-Stack Development using MERN',
                  text2: 'Web Development',
                  image2: 'assets/images/logo.png',
                  text3: 'Cipher Schools',
                  route: WebDev.routename,
                ),
              ],
              options: CarouselOptions(
                height: isLandScape ? 200 : 300,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 2 * width / height,
                enableInfiniteScroll: false,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                viewportFraction: 1.0,
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              bottom: 0,
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_left,
                  color: Colors.white,
                  size:30,
                ),
                onPressed: () => _controller.previousPage(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.linear,
                ),
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              bottom: 0,
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_right,
                  color: Colors.white,
                  size:30,
                ),
                onPressed: () => _controller.nextPage(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.linear,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

