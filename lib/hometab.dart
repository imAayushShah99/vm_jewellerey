import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'explore.dart';
import 'my_home_page.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  List<Widget> page = [
    const MyHomePage(),
    const CategoriesTab(),
    const NotificationTab(),
    const ProfileTab()
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: const Drawer(),
      bottomNavigationBar: CustomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });

          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => page[index]),
          // );
        },
        // currentIndex: _currentIndex,
        // onTap: (index) {
        //   setState(() {
        //     _currentIndex = index;
        //     // if (_currentIndex == 2 || _currentIndex == 3) {
        //     //   print('I am here');
        //     //   Navigator.push(
        //     //     context,
        //     //     MaterialPageRoute(
        //     //         builder: (context) => push[_currentIndex - 2]),
        //     //   );
        //     // }
        //   });
        // },
        iconSize: 30.0,
        selectedColor: const Color(0xff040307),
        strokeColor: const Color(0x30040307),
        unSelectedColor: const Color(0xffacacac),
        backgroundColor: Colors.white,
        items: [
          CustomNavigationBarItem(
            // selectedIcon: HomeTab(),
            icon: const Icon(Icons.home),
            title: const Text("Home"),
          ),
          CustomNavigationBarItem(
            // selectedIcon: CategoriesTab(),
            icon: const Icon(Icons.category),
            title: const Text("Explore"),
          ),
          CustomNavigationBarItem(
            // selectedIcon: OffersTab(),
            icon: const Icon(Icons.notifications),
            title: const Text("Notification"),
          ),
          CustomNavigationBarItem(
            // selectedIcon: ProfileTab(),
            icon: const Icon(Icons.account_circle),
            title: const Text("Profile"),
          ),
        ],

        // isFloating: true,
      ),
      body: page[currentIndex],
    );
  }
}

class NotificationTab extends StatelessWidget {
  const NotificationTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
