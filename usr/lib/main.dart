import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'screens/home_screen.dart';
import 'screens/ecommerce_screen.dart';
import 'screens/education_screen.dart';
import 'screens/health_screen.dart';
import 'screens/more_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anezone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFFFF9900),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFFFF9900),
          secondary: const Color(0xFF146EB4),
          background: const Color(0xFFFFFFFF),
        ),
        scaffoldBackgroundColor: const Color(0xFFFFFFFF),
        fontFamily: 'Roboto', // A modern, clean font
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final List<Widget> _screens = [
    const HomeScreen(),
    const EcommerceScreen(),
    const EducationScreen(),
    const HealthScreen(),
    const MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() => _currentIndex = index);
        },
        children: _screens,
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: const Icon(Icons.home),
            title: const Text('Home'),
            activeColor: Theme.of(context).primaryColor,
            inactiveColor: Colors.grey,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.shopping_cart),
            title: const Text('E-commerce'),
            activeColor: Theme.of(context).primaryColor,
            inactiveColor: Colors.grey,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.school),
            title: const Text('Education'),
            activeColor: Theme.of(context).primaryColor,
            inactiveColor: Colors.grey,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.local_hospital),
            title: const Text('Health'),
            activeColor: Theme.of(context).primaryColor,
            inactiveColor: Colors.grey,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.more_horiz),
            title: const Text('More'),
            activeColor: Theme.of(context).primaryColor,
            inactiveColor: Colors.grey,
          ),
        ],
      ),
    );
  }
}
