import 'package:fake_eccom/ui/pages/cart_page.dart';
import 'package:fake_eccom/ui/pages/home_page.dart';
import 'package:fake_eccom/ui/pages/profile_page.dart';
import 'package:fake_eccom/ui/pages/search_page.dart';
import 'package:flutter/material.dart';

class RootNav extends StatefulWidget {
  const RootNav({super.key});

  @override
  State<RootNav> createState() => _RootNavState();
}

class _RootNavState extends State<RootNav> {
  late PageController _pageController;
  late int _selectedIndex = 0;
  final List<Widget> _pageList = [
    const HomePage(),
    const SearchPage(),
    const CartPage(),
    const ProfilePage(),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: _selectedIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: _pageList,
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        height: kBottomNavigationBarHeight,
        elevation: 0,
        onDestinationSelected: (value) {
          setState(() {
            _selectedIndex = value;
          });
          _pageController.jumpToPage(value);
        },
        selectedIndex: _selectedIndex,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Главная',
          ),
          NavigationDestination(
            icon: Icon(Icons.search),
            label: 'Поиск',
          ),
          NavigationDestination(
            icon: Icon(Icons.shopping_cart),
            label: 'Корзина',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Профиль',
          ),
        ],
      ),
    );
  }
}
