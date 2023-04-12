import 'package:flutter/material.dart';

class CarUtility extends StatelessWidget {
  final String? image1;
  final String? text1;
  final String? text2;
  final String? image2;
  final String? text3;
  final String? route;

  CarUtility(
      {required this.image1,
      required this.text1,
      required this.text2,
      required this.image2,
      required this.text3,
      required this.route,
      });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final isLandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Container(
      width: width,
      height: isLandScape ? 200 : 300,
      margin: const EdgeInsets.all(1.0),
      child: Stack(
        children: [
          Image.asset(
            image1!,
            fit: BoxFit.fill,
            width: width,
            height: isLandScape ? 200 : 300,
          ),
          Positioned(
            bottom: 130,
            left: 10,
            child: Text(
              text1!,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 100,
            left: 10,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3.0),
                color: Colors.white.withOpacity(0.2),
              ),
              height: 20,
              width: 120,
              child: Text(
                text2!,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 10,
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(image2!),
                ),
                const SizedBox(width: 4),
                Container(
                  height: 20,
                  width: 120,
                  child: Text(
                    text3!,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              bottom: 5,
              left: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(route!);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  minimumSize: const Size(20, 30),
                ),
                child: const Text(
                  'Watch',
                  style:  TextStyle(color: Colors.white),
                ),
              )),
        ],
      ),
    );
  }
}
