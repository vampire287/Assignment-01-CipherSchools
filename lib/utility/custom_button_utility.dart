import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? image;
  final VoidCallback? onPressed;
  CustomButton({ this.image, this.onPressed});

  @override
  Widget build(BuildContext context) {
    final isLandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.all(5),
        
        height: isLandScape?300:200,
        decoration:  BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image!),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
