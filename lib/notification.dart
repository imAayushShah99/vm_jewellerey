import 'package:flutter/material.dart';
import 'package:vm_jewellerey/wishlist.dart';

import 'cart.dart';

class NotificationTab extends StatefulWidget {
  const NotificationTab({Key? key}) : super(key: key);

  @override
  State<NotificationTab> createState() => _NotificationTabState();
}

class _NotificationTabState extends State<NotificationTab> {
  List<String> notificationHead = [
    'Offer Offer Offer',
    'Orders Pending',
    'Order Confirmed',
    'Parcel Outgoing',
    'Offer Offer Offer',
    'Orders Pending',
    'Order Confirmed',
    'Parcel Outgoing',
    'Offer Offer Offer',
    'Orders Pending',
    'Order Confirmed',
    'Parcel Outgoing',
  ];
  List<String> notificationBody = [
    'The Big days are coming nearThe Big days are coming nearThe Big days are coming nearThe Big days are coming near',
    'You have order in Cart You have order in Cart You have order in Cart You have order in Cart',
    'Your Order 123456789 is Conformed Your Order 123456789 is Conformed Your Order 123456789 is ConformedYour Order 123456789 is Conformed',
    'Your Parcel 123987 is on its way Your Parcel 123987 is on its way Your Parcel 123987 is on its way Your Parcel 123987 is on its way',
    'The Big days are coming nearThe Big days are coming nearThe Big days are coming nearThe Big days are coming near',
    'You have order in Cart You have order in Cart You have order in Cart You have order in Cart',
    'Your Order 123456789 is Conformed Your Order 123456789 is Conformed Your Order 123456789 is ConformedYour Order 123456789 is Conformed',
    'Your Parcel 123987 is on its way Your Parcel 123987 is on its way Your Parcel 123987 is on its way Your Parcel 123987 is on its way',
    'The Big days are coming nearThe Big days are coming nearThe Big days are coming nearThe Big days are coming near',
    'You have order in Cart You have order in Cart You have order in Cart You have order in Cart',
    'Your Order 123456789 is Conformed Your Order 123456789 is Conformed Your Order 123456789 is ConformedYour Order 123456789 is Conformed',
    'Your Parcel 123987 is on its way Your Parcel 123987 is on its way Your Parcel 123987 is on its way Your Parcel 123987 is on its way',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 9, 62, 11),
        title: const Text('Notification'),
        actions: [
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
        child: ListView.builder(
            itemCount: notificationBody.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.green[100],
                  // padding: const EdgeInsets.all(8.0),
                  // height: 65,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          notificationHead[index],
                          style: const TextStyle(fontSize: 20),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          notificationBody[index],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
