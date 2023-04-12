import 'package:flutter/material.dart';

import '../Screens/Course.dart';
import '../Screens/Home.dart';
import '../fake_screens/profile_screen.dart';
import '../fake_screens/trending_screen.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);
  
  

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animation;
  //var _selectedIndex=0;
  

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 500));
    _animation = Tween<Offset>(begin: const Offset(0.0,1.0) , end: Offset.zero).animate(_animationController);
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    final isLandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return SlideTransition(
      position: _animation,
      child: Container(
        margin:  EdgeInsets.all(isLandScape?5:20),
        height: 40.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(1),
              blurRadius: 5.0,
              spreadRadius: 2.0,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                
                // setState(() {
                //   _selectedIndex=0;
                // });
                Navigator.of(context).pushReplacementNamed('/');
              },
              icon:  const Icon(Icons.home,color: Colors.orange),
            ),
            IconButton(
              onPressed: () {
                
                // setState(() {
                //   _selectedIndex=1;
                // });
                Navigator.of(context).pushReplacementNamed(Course.routename);// Navigate to screen 2
              },
              icon:  const Icon(Icons.library_books,color:Colors.orange),
            ),
            IconButton(
              onPressed: () {
                
                // setState(() {
                //   _selectedIndex=2;
                // });
                Navigator.of(context).pushReplacementNamed(Trending.routename);// Navigate to screen 3
              },
              icon:  const Icon(Icons.style,color:Colors.orange),
            ),
            IconButton(
              onPressed: () {
                
                // setState(() {
                //   _selectedIndex=3;
                // });
                Navigator.of(context).pushReplacementNamed(Profile.routename);// Navigate to screen 3
              },
              icon:  const Icon(Icons.person,color:Colors.orange),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
