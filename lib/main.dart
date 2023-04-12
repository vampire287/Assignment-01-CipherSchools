import 'package:assignment3/Provider/dark_theme_provider.dart';
import 'package:assignment3/Widgets/dark_theme.dart';
import 'package:assignment3/fake_screens/Python_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Screens/Course.dart';
import 'Screens/Home.dart';
import 'Theme_style/Theme.dart';
import 'fake_screens/IELTS_screen.dart';
import 'fake_screens/app_dev_screen.dart';
import 'fake_screens/profile_screen.dart';
import 'fake_screens/trending_screen.dart';
import 'fake_screens/web_dev_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider themeChangeProvider = DarkThemeProvider();

  @override
  void initState() {
    super.initState();
    getCurrentAppTheme();
  }

  void getCurrentAppTheme() async {
    themeChangeProvider.darkTheme =
        await themeChangeProvider.darkThemePreference.getTheme();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) {
        return themeChangeProvider;
      },
      child: Consumer<DarkThemeProvider>(
        builder: (ctx, value, _) {
          return MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: Styles.themeData(themeChangeProvider.darkTheme, context),
            home: Home(),
            routes: {
              App.routename: (ctx) => const App(),
              IELTS.routename: (ctx) => const IELTS(),
              WebDev.routename: (ctx) => const WebDev(),
              Python.routename: (ctx) => const Python(),
              Trending.routename: (ctx) => const Trending(),
              Profile.routename: (ctx) => const Profile(),
              Course.routename: (ctx) =>  Course(),
            },
            
          );
        },
      ),
    );
  }
}
