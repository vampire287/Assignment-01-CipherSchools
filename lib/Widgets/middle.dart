import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../Screens/Course.dart';

class MiddleScreen extends StatelessWidget {
  const MiddleScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final isLandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    double mediaquery = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Material(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  text: 'Welcome to ',
                  style: TextStyle(
                      fontSize: 32.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: 'the Future ',
                      style: TextStyle(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: 'of Learning ',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              isLandScape
                  ? Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                            text: 'Start Learning by best creators for ',
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        AnimatedTextKit(
                          repeatForever: true,
                          stopPauseOnTap: true,
                          displayFullTextOnTap: true,
                          animatedTexts: [
                            TypewriterAnimatedText('absolutely Free ',
                                textStyle: const TextStyle(
                                  color: Colors.orange,
                                  fontSize: 15.0,
                                ),
                                speed: const Duration(milliseconds: 80),
                                cursor: '|'),
                          ],
                        ),
                      ],
                    )
                  : Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                            text: 'Start Learning by best creators for ',
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        AnimatedTextKit(
                          repeatForever: true,
                          stopPauseOnTap: true,
                          displayFullTextOnTap: true,
                          animatedTexts: [
                            TypewriterAnimatedText('absolutely Free ',
                                textStyle: const TextStyle(
                                  color: Colors.orange,
                                  fontSize: 15.0,
                                ),
                                speed: const Duration(milliseconds: 80),
                                cursor: '|'),
                          ],
                        ),
                      ],
                    ),
              const SizedBox(height: 10),
              Container(
                child: SizedBox(
                  height: 60,
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/rating.png'),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(Course.routename);
                },
                child: SizedBox(
                  height: 20,
                  width: 158,
                  child: Row(
                    children: const [
                      Text("Start Learning Now "),
                      SizedBox(
                        width: 3,
                      ),
                      Icon(Icons.arrow_right_alt),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: mediaquery * 0.1,
              ),

              // SafeArea(child: MyCarousel()),

              Container(
                width: double.infinity,
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 200.0,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: true,
                    viewportFraction: 0.4,
                    autoPlay: true,
                    // enlargeStrategy: CenterPageEnlargeStrategy.scale,
                  ),
                  items: [
                    Image.asset('assets/images/pic1.png'),
                    Image.asset('assets/images/pic2.png'),
                    Image.asset('assets/images/pic3.png'),
                    Image.asset('assets/images/pic4.png'),
                  ],
                ),
              )

              // Container(
              //   width: double.infinity,
              //   child: CarouselSlider.builder(
              //     itemCount: 3,
              //     options: CarouselOptions(
              //       height: 200.0,
              //       enlargeCenterPage: true,
              //       enableInfiniteScroll: true,
              //       autoPlay: true,
              //       viewportFraction: 0.4,
              //     ),
              //     itemBuilder: (BuildContext context, int index, _) {
              //       return Container(
              //         decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(8.0),
              //         ),
              //         child: ClipRRect(
              //           borderRadius: BorderRadius.circular(8.0),
              //           child: Stack(
              //             children: [
              //               Image.network(
              //                 'https://picsum.photos/id/${index + 237}/200/300',
              //                 fit: BoxFit.cover,
              //               ),
              //               Positioned.fill(
              //                 child: Container(
              //                   color: index == 1
              //                       ? Colors.white.withOpacity(0.5)
              //                       : Colors.transparent,
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ),
              //       );
              //     },
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
