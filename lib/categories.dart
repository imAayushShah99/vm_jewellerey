import 'package:flutter/material.dart';

class NotificationTab extends StatelessWidget {
  const NotificationTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                'https://www.dollymanghat.com/wp-content/uploads/2017/10/gems-banner.png'),
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
          ],
        ),
      )),
    );
  }
}
