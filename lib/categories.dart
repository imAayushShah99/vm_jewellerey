import 'package:flutter/material.dart';
import 'package:vm_jewellerey/wishlist.dart';

import 'cart.dart';

class NotificationTab extends StatelessWidget {
  const NotificationTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 9, 62, 11),
        title: const Text('Categories'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const NotificationTab()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyCart()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Wishlist()),
              );
            },
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Image.network(
                'https://cdn.jewelryimages.net/static/domains/jewelerstouch/images/store-pics/JT---Gold-Banner-for-Website.jpg'),
            const SizedBox(
              height: 10,
            ),
            Image.network(
                'https://t3.ftcdn.net/jpg/02/14/45/10/360_F_214451066_TkdsyK2YzixNzw7QukVaNtNJG8uvmeO5.jpg'),
            const SizedBox(
              height: 10,
            ),
            Image.network(
                'https://agaunews.com/wp-content/uploads/2013/09/VC-PLATINUM-BANNER.jpg'),
            const SizedBox(
              height: 10,
            ),
            Image.network(
                'https://www.dollymanghat.com/wp-content/uploads/2017/10/gems-banner.png'),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      )),
    );
  }
}
