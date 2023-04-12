import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../fake_screens/Python_screen.dart';
import '../fake_screens/web_dev_screen.dart';
import '../utility/custom_button_utility.dart';

class CarouselUse extends StatefulWidget {
  const CarouselUse({super.key});

  @override
  State<CarouselUse> createState() => _CarouselUseState();
}

class _CarouselUseState extends State<CarouselUse> {

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
      children: [Stack(
        children: [
          CarouselSlider(
            carouselController: _controller,
            items: [
              CustomButton(
                image:'assets/images/imag1.png',
                onPressed:() async{ await Navigator.of(context).pushNamed(WebDev.routename);},
              ),
              CustomButton(
                image:'assets/images/imag2.png',
                onPressed:() async{ await Navigator.of(context).pushNamed(WebDev.routename);},
              ),
              CustomButton(
                image:'assets/images/imag3.png',
                onPressed:() async{ await Navigator.of(context).pushNamed(WebDev.routename);},
              ),
              CustomButton(
                image:'assets/images/imag4.png',
                onPressed:() async{ await Navigator.of(context).pushNamed(Python.routename);},
              ),
               
            ],
            options: CarouselOptions(
              height:  isLandScape?300:200,
              enlargeCenterPage: false,
              autoPlay: false,
              aspectRatio: 16/9,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              viewportFraction: 0.5,
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.grey,
                size:20,
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
                Icons.arrow_forward_ios,
                color: Colors.grey,
                size: 20,
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