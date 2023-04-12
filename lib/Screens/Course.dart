import 'package:assignment3/Provider/dark_theme_provider.dart';
import 'package:provider/provider.dart';
import '../Widgets/carousel.dart';
import '../Widgets/carousel_slider.dart';
import '../Widgets/navbar.dart';
import '../fake_screens/Python_screen.dart';
import '../fake_screens/app_dev_screen.dart';
import 'package:flutter/material.dart';
import '../fake_screens/IELTS_screen.dart';
import '../fake_screens/web_dev_screen.dart';
import 'package:custom_switch/custom_switch.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';

class Course extends StatefulWidget {
  static const routename = '/courses';

  @override
  State<Course> createState() => _CourseState();
}

class _CourseState extends State<Course> {
  String _selectedItem = 'Popular';
  List<String> _items = ['Popular', 'Latest'];
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final isLandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(215, 0, 0, 0),
        leading: const CircleAvatar(
          backgroundImage: AssetImage('assets/images/image.png'),
        ),
        title: const Text(
          'CipherSchools',
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          PopupMenuButton<String>(
            itemBuilder: (_) => [
              const PopupMenuItem(
                value: 'App Dev',
                child: Text('App Dev'),
              ),
              const PopupMenuItem(
                value: 'IELTS',
                child: Text('IELTS'),
              ),
              const PopupMenuItem(
                value: 'Web Dev',
                child: Text('Web Dev'),
              ),
              const PopupMenuItem(
                value: 'Python',
                child: Text('Pthon dev'),
              ),
            ],
            onSelected: (String value) {
              switch (value) {
                case 'App Dev':
                  Navigator.of(context).pushNamed(App.routename);
                  break;
                case 'IELTS':
                  Navigator.of(context).pushNamed(IELTS.routename);
                  break;
                case 'Web Dev':
                  Navigator.of(context).pushNamed(WebDev.routename);
                  break;
                case 'Python':
                  Navigator.of(context).pushNamed(Python.routename);
                  break;
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1.0),
              // ignore: avoid_unnecessary_containers
              child: Container(
                child: Row(
                  children: const <Widget>[
                    Icon(Icons.browser_updated),
                    Text(
                      'Browser',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Icon(Icons.arrow_drop_down_sharp)
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(width: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('off'),
              Switch.adaptive(
                value: themeChange.darkTheme,
                onChanged: (bool value) {
                  themeChange.darkTheme = value;
                },
                activeColor: Colors.grey,
              ),
              const Text('on')
            ],
          ),
          const SizedBox(width: 2),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notification_add),
          ),
          const SizedBox(width: 2),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          const SizedBox(width: 3),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                width: width,
                height: isLandScape ? 200 : 300,
                child: Carousel()),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '  Recommended Courses',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: const EdgeInsets.all(5),
                  width: 80,
                  height: 40,
                  child: DropdownButton<String>(
                    value: _selectedItem,
                    onChanged: (value) {
                      setState(() {
                        _selectedItem = value!;
                      });
                    },
                    items: _items
                        .map(
                          (item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(item),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
             Container(width:double.infinity,height:isLandScape?300:200, child:  const CarouselUse()),
          ],
        ),
      ),
      extendBody: true,
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
