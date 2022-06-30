import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vm_jewellerey/product_details.dart';
import 'package:vm_jewellerey/wishlist.dart';

import 'cart.dart';
import 'categories.dart';

class CategoriesTab extends StatefulWidget {
  const CategoriesTab({super.key});

  @override
  State<CategoriesTab> createState() => _CategoriesTabState();
}

class _CategoriesTabState extends State<CategoriesTab> {
  bool isKids = false;
  bool isMens = false;
  bool isWomens = false;
  bool isUnisex = false;
  List<String> labelName = [
    'abcd',
    'dd',
    'cdcdc',
    'abcd',
    'dd',
    'cdcdc',
    'abcd',
    'dd',
    'cdcdc',
    'abcd',
    'dd',
    'cdcdc',
    'abcd',
    'dd',
    'cdcdc',
    'abcd',
    'dd',
    'cdcdc',
    'abcd',
    'dd',
  ];
  List<String> list = [
    'https://staticimg.titan.co.in/Tanishq/Catalog/501720SDIAAA00_1.jpg?impolicy=pqmed&imwidth=640',
    'https://staticimg.titan.co.in/Tanishq/Catalog/504002SXDABA02.jpg?impolicy=pqmed&imwidth=640',
    'https://staticimg.titan.co.in/Tanishq/Catalog/500072DHAABB29_1.jpg?impolicy=pqmed&imwidth=640',
    'https://staticimg.titan.co.in/Tanishq/Catalog/500073DRAABA32_1.jpg?impolicy=pqmed&imwidth=640',
    'https://staticimg.titan.co.in/Tanishq/Catalog/503520DBFABA00_1.jpg?impolicy=pqmed&imwidth=640',
    'https://staticimg.titan.co.in/Tanishq/Catalog/513919DPOABA00_1.jpg?impolicy=pqmed&imwidth=640',
    'https://staticimg.titan.co.in/Tanishq/Catalog/511819DKCABA00.jpg?impolicy=pqmed&imwidth=640',
    'https://staticimg.titan.co.in/Tanishq/Catalog/501169SDHAAA29_1.jpg?impolicy=pqmed&imwidth=640',
    'https://staticimg.titan.co.in/Tanishq/Catalog/502219FCLAAP4_1.jpg?impolicy=pqmed&imwidth=640',
    'https://staticimg.titan.co.in/Tanishq/Catalog/502996FVNAA09.jpg?impolicy=pqmed&imwidth=640',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 9, 62, 11),
        title: const Text('Explore'),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 50,
                padding: const EdgeInsets.all(10),
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ListView(
                      // padding: const EdgeInsets.symmetric(horizontal: 10),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: isKids
                              ? GestureDetector(
                                  onTap: () => setState(() {
                                    isKids = !isKids;
                                  }),
                                  child: Container(
                                    width: 70,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          color: Colors.black, width: 1.5),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: const [
                                        Text(
                                          'Kids',
                                          style: TextStyle(color: Colors.red),
                                        ),
                                        SizedBox(
                                          width: 7,
                                        ),
                                        Text(
                                          'X',
                                          style: TextStyle(
                                              color: Colors.red, fontSize: 13),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              : GestureDetector(
                                  onTap: () => setState(() {
                                    isKids = !isKids;
                                  }),
                                  child: Container(
                                    width: 50,
                                    decoration: BoxDecoration(
                                      // color: Colors.grey[100],
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          color: Colors.black, width: 1.5),
                                    ),
                                    child: const Center(child: Text('Kids')),
                                  ),
                                ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: isMens
                              ? GestureDetector(
                                  onTap: () => setState(() {
                                    isMens = !isMens;
                                  }),
                                  child: Container(
                                    width: 70,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          color: Colors.black, width: 1.5),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: const [
                                        Text(
                                          'Mens',
                                          style: TextStyle(color: Colors.red),
                                        ),
                                        SizedBox(
                                          width: 7,
                                        ),
                                        Text(
                                          'X',
                                          style: TextStyle(
                                              color: Colors.red, fontSize: 13),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              : GestureDetector(
                                  onTap: () => setState(() {
                                    isMens = !isMens;
                                  }),
                                  child: Container(
                                    width: 50,
                                    decoration: BoxDecoration(
                                      // color: Colors.grey[100],
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          color: Colors.black, width: 1.5),
                                    ),
                                    child: const Center(child: Text('Mens')),
                                  ),
                                ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: isWomens
                              ? GestureDetector(
                                  onTap: () => setState(() {
                                    isWomens = !isWomens;
                                  }),
                                  child: Container(
                                    width: 75,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          color: Colors.black, width: 1.5),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: const [
                                        Text(
                                          'Women',
                                          style: TextStyle(color: Colors.red),
                                        ),
                                        SizedBox(
                                          width: 7,
                                        ),
                                        Text(
                                          'X',
                                          style: TextStyle(
                                              color: Colors.red, fontSize: 13),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              : GestureDetector(
                                  onTap: () => setState(() {
                                    isWomens = !isWomens;
                                  }),
                                  child: Container(
                                    width: 55,
                                    decoration: BoxDecoration(
                                      // color: Colors.grey[100],
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          color: Colors.black, width: 1.5),
                                    ),
                                    child: const Center(child: Text('Women')),
                                  ),
                                ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: isUnisex
                              ? GestureDetector(
                                  onTap: () => setState(() {
                                    isUnisex = !isUnisex;
                                  }),
                                  child: Container(
                                    width: 75,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          color: Colors.black, width: 1.5),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: const [
                                        Text(
                                          'Unisex',
                                          style: TextStyle(color: Colors.red),
                                        ),
                                        SizedBox(
                                          width: 7,
                                        ),
                                        Text(
                                          'X',
                                          style: TextStyle(
                                              color: Colors.red, fontSize: 13),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              : GestureDetector(
                                  onTap: () => setState(() {
                                    isUnisex = !isUnisex;
                                  }),
                                  child: Container(
                                    width: 55,
                                    decoration: BoxDecoration(
                                      // color: Colors.grey[100],
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          color: Colors.black, width: 1.5),
                                    ),
                                    child: const Center(child: Text('Unisex')),
                                  ),
                                ),
                        ),
                      ],
                    )
                    // Row(
                    //   children: const [
                    //     Icon(
                    //       Icons.filter_alt,
                    //     ),
                    //     Text('Filter'),
                    //   ],
                    // ),
                    // GestureDetector(
                    //   onTap: () {
                    //     showCupertinoModalPopup(
                    //         context: context,
                    //         builder: (context) {
                    //           return CupertinoActionSheet(
                    //             title: const Text('Sort By'),
                    //             actions: [
                    //               CupertinoActionSheetAction(
                    //                 onPressed: () {
                    //                   Navigator.pop(context);
                    //                   print(
                    //                     'Featured',
                    //                   );
                    //                 },
                    //                 child: const Text(
                    //                   'Featured',
                    //                   style: TextStyle(
                    //                       color:
                    //                           Color.fromARGB(255, 63, 57, 57)),
                    //                 ),
                    //                 // isDefaultAction: true,
                    //               ),
                    //               CupertinoActionSheetAction(
                    //                 onPressed: () {
                    //                   setState(() {
                    //                     labelName
                    //                         .sort(((a, b) => b.compareTo(a)));
                    //                   });
                    //                   Navigator.pop(context);
                    //                   print('low to high');
                    //                 },
                    //                 child: const Text(
                    //                   'Price: Low to High',
                    //                   style: TextStyle(
                    //                       color:
                    //                           Color.fromARGB(255, 63, 57, 57)),
                    //                 ),
                    //               ),
                    //               CupertinoActionSheetAction(
                    //                 onPressed: () {
                    //                   setState(() {
                    //                     labelName
                    //                         .sort(((a, b) => a.compareTo(b)));
                    //                   });
                    //                   Navigator.pop(context);
                    //                   print('hightolow');
                    //                 },
                    //                 child: const Text(
                    //                   'Price: High to Low',
                    //                   style: TextStyle(
                    //                       color:
                    //                           Color.fromARGB(255, 63, 57, 57)),
                    //                 ),
                    //               ),
                    //               CupertinoActionSheetAction(
                    //                 onPressed: () {
                    //                   Navigator.pop(context);
                    //                   print('new');
                    //                 },
                    //                 child: const Text(
                    //                   'Newest Arrival',
                    //                   style: TextStyle(
                    //                       color:
                    //                           Color.fromARGB(255, 63, 57, 57)),
                    //                 ),
                    //               ),
                    //               CupertinoActionSheetAction(
                    //                 onPressed: () {
                    //                   Navigator.pop(context);
                    //                   print('avg cust');
                    //                 },
                    //                 child: const Text(
                    //                   'Avg. Customer Review',
                    //                   style: TextStyle(
                    //                       color:
                    //                           Color.fromARGB(255, 63, 57, 57)),
                    //                 ),
                    //               ),
                    //             ],
                    //           );
                    //         });
                    //   },
                    //   child: Row(
                    //     children: const [
                    //       Icon(Icons.sort),
                    //       Text('Sort'),
                    //     ],
                    //   ),
                    // ),
                    // Row(
                    //   children: const [
                    //     Icon(
                    //       Icons.list,
                    //     ),
                    //     Text('List'),
                    //   ],
                    // ),
                  ],
                ),
              ),

              // SizedBox(
              //   height: 5,
              // ),
              Container(
                color: Colors.grey[300],
                // height: 800,
                // width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(15.0),

                child: GridView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            // childAspectRatio: 3 / 2,
                            // childAspectRatio: countValue == 2
                            //     ? MediaQuery.of(context).size.width /
                            //         (MediaQuery.of(context).size.height / 1.4)
                            //     : (aspectWidth / aspectHeight * 1.2),
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8,
                            mainAxisExtent: 265),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ProductDetails()),
                          );
                        },
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          width: MediaQuery.of(context).size.width * 0.49,
                          height: 150,
                          // margin: EdgeInsets.all(value),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.49,
                                height: 150,
                                child: Image.network(
                                  list[index],
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(7.5),
                                // top: 7.5, lef: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const AutoSizeText(
                                      'Round Nature Inspired Gold Mesh Stud Earrings',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          // fontSize: 9,
                                          color: Colors.black),
                                      minFontSize: 9,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    // decoration: TextDecoration.lineThrough,
                                    const Text(
                                      '\u{20B9} 38,348',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text(
                                          ' \u{20B9} 40,000',
                                          style: TextStyle(
                                              fontSize: 14,
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              color: Colors.grey),
                                        ),
                                        Icon(
                                          FontAwesomeIcons.heart,
                                          size: 20,
                                          color: Colors.black54,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }
                    //  SizedBox(
                    //                     width: MediaQuery.of(context).size.width * 0.49,
                    //                     height: 354.8,
                    //                     child: Column(
                    //                       crossAxisAlignment: CrossAxisAlignment.start,
                    //                       children: [
                    //                         SizedBox(
                    //                           width: MediaQuery.of(context).size.width * 0.49,
                    //                           height: 235.73,
                    //                           child: Image.network(
                    //                             list[1],
                    //                             fit: BoxFit.fill,
                    //                           ),
                    //                         ),
                    //                         Padding(
                    //                           padding:
                    //                               const EdgeInsets.only(top: 7.5, right: 20),
                    //                           child: Column(
                    //                             crossAxisAlignment: CrossAxisAlignment.start,
                    //                             children: [
                    //                               Row(
                    //                                 crossAxisAlignment:
                    //                                     CrossAxisAlignment.start,
                    //                                 mainAxisAlignment:
                    //                                     MainAxisAlignment.spaceBetween,
                    //                                 children: [
                    //                                   AutoSizeText(
                    //                                     tag[1],
                    //                                     style: TextStyle(
                    //                                         color: Colors.red[500],
                    //                                         fontWeight: FontWeight.w400,
                    //                                         fontSize: 12),
                    //                                     minFontSize: 12,
                    //                                     maxLines: 1,
                    //                                     overflow: TextOverflow.ellipsis,
                    //                                   ),
                    //                                   const Icon(
                    //                                     FontAwesomeIcons.heart,
                    //                                     size: 20,
                    //                                     color: Colors.black54,
                    //                                   )
                    //                                 ],
                    //                               ),
                    //                               const SizedBox(
                    //                                 height: 5,
                    //                               ),
                    //                               const AutoSizeText(
                    //                                 'Men Solid Knitted Round Neck ',
                    //                                 style: TextStyle(
                    //                                     fontWeight: FontWeight.normal,
                    //                                     fontSize: 15.5,
                    //                                     color: Colors.black54),
                    //                                 minFontSize: 15,
                    //                                 maxLines: 1,
                    //                                 overflow: TextOverflow.ellipsis,
                    //                               ),
                    //                               const SizedBox(
                    //                                 height: 5,
                    //                               ),
                    //                               // decoration: TextDecoration.lineThrough,
                    //                               Row(
                    //                                 children: const [
                    //                                   Text(
                    //                                     '\u{20B9} 399',
                    //                                     style: TextStyle(
                    //                                         fontWeight: FontWeight.bold,
                    //                                         fontSize: 17),
                    //                                   ),
                    //                                   SizedBox(
                    //                                     width: 5,
                    //                                   ),
                    //                                   Text(' \u{20B9} 699',
                    //                                       style: TextStyle(
                    //                                           fontSize: 14,
                    //                                           decoration:
                    //                                               TextDecoration.lineThrough,
                    //                                           color: Colors.red)),
                    //                                 ],
                    //                               ),
                    //                             ],
                    //                           ),
                    //                         ),
                    //                       ],
                    //                     ),
                    //                   ),
                    //                   GestureDetector(
                    //                     onTap: () {
                    //                       Navigator.push(
                    //                         context,
                    //                         MaterialPageRoute(
                    //                             builder: (context) => const ProductDetails()),
                    //                       );
                    //                     },
                    //                     child: SizedBox(
                    //                       width: MediaQuery.of(context).size.width * 0.49,
                    //                       height: 354.8,
                    //                       child: Column(
                    //                         crossAxisAlignment: CrossAxisAlignment.start,
                    //                         children: [
                    //                           SizedBox(
                    //                             width: MediaQuery.of(context).size.width * 0.49,
                    //                             height: 235.73,
                    //                             child: Image.network(
                    //                               list[2],
                    //                               fit: BoxFit.fill,
                    //                             ),
                    //                           ),
                    //                           Padding(
                    //                             padding:
                    //                                 const EdgeInsets.only(top: 7.5, right: 20),
                    //                             child: Column(
                    //                               crossAxisAlignment: CrossAxisAlignment.start,
                    //                               children: [
                    //                                 Row(
                    //                                   crossAxisAlignment:
                    //                                       CrossAxisAlignment.start,
                    //                                   mainAxisAlignment:
                    //                                       MainAxisAlignment.spaceBetween,
                    //                                   children: [
                    //                                     AutoSizeText(
                    //                                       tag[2],
                    //                                       style: TextStyle(
                    //                                           color: Colors.red[500],
                    //                                           fontWeight: FontWeight.w400,
                    //                                           fontSize: 12),
                    //                                       minFontSize: 12,
                    //                                       maxLines: 1,
                    //                                       overflow: TextOverflow.ellipsis,
                    //                                     ),
                    //                                     const Icon(
                    //                                       FontAwesomeIcons.heart,
                    //                                       size: 20,
                    //                                       color: Colors.black54,
                    //                                     )
                    //                                   ],
                    //                                 ),
                    //                                 const SizedBox(
                    //                                   height: 5,
                    //                                 ),
                    //                                 const AutoSizeText(
                    //                                   'Men Solid Knitted Round Neck ',
                    //                                   style: TextStyle(
                    //                                       fontWeight: FontWeight.normal,
                    //                                       fontSize: 15.5,
                    //                                       color: Colors.black54),
                    //                                   minFontSize: 15,
                    //                                   maxLines: 1,
                    //                                   overflow: TextOverflow.ellipsis,
                    //                                 ),
                    //                                 const SizedBox(
                    //                                   height: 5,
                    //                                 ),
                    //                                 // decoration: TextDecoration.lineThrough,
                    //                                 Row(
                    //                                   children: const [
                    //                                     Text(
                    //                                       '\u{20B9} 399',
                    //                                       style: TextStyle(
                    //                                           fontWeight: FontWeight.bold,
                    //                                           fontSize: 17),
                    //                                     ),
                    //                                     SizedBox(
                    //                                       width: 5,
                    //                                     ),
                    //                                     Text(' \u{20B9} 699',
                    //                                         style: TextStyle(
                    //                                             fontSize: 14,
                    //                                             decoration:
                    //                                                 TextDecoration.lineThrough,
                    //                                             color: Colors.red)),
                    //                                   ],
                    //                                 ),
                    //                               ],
                    //                             ),
                    //                           ),
                    //                         ],
                    //                       ),
                    //                     ),
                    //                   ),
                    //                   SizedBox(
                    //                     width: MediaQuery.of(context).size.width * 0.49,
                    //                     height: 354.8,
                    //                     child: Column(
                    //                       children: [
                    //                         SizedBox(
                    //                           width: MediaQuery.of(context).size.width * 0.49,
                    //                           height: 235.73,
                    //                           child: Image.network(
                    //                             list[3],
                    //                             fit: BoxFit.fill,
                    //                           ),
                    //                         ),
                    //                         Padding(
                    //                           padding:
                    //                               const EdgeInsets.only(top: 7.5, right: 20),
                    //                           child: Column(
                    //                             crossAxisAlignment: CrossAxisAlignment.start,
                    //                             children: [
                    //                               Row(
                    //                                 crossAxisAlignment:
                    //                                     CrossAxisAlignment.start,
                    //                                 mainAxisAlignment:
                    //                                     MainAxisAlignment.spaceBetween,
                    //                                 children: [
                    //                                   AutoSizeText(
                    //                                     tag[3],
                    //                                     style: TextStyle(
                    //                                         color: Colors.red[500],
                    //                                         fontWeight: FontWeight.w400,
                    //                                         fontSize: 12),
                    //                                     minFontSize: 12,
                    //                                     maxLines: 1,
                    //                                     overflow: TextOverflow.ellipsis,
                    //                                   ),
                    //                                   const Icon(
                    //                                     FontAwesomeIcons.heart,
                    //                                     size: 20,
                    //                                     color: Colors.black54,
                    //                                   )
                    //                                 ],
                    //                               ),
                    //                               const SizedBox(
                    //                                 height: 5,
                    //                               ),
                    //                               const AutoSizeText(
                    //                                 'Men Solid Knitted Round Neck ',
                    //                                 style: TextStyle(
                    //                                     fontWeight: FontWeight.normal,
                    //                                     fontSize: 15.5,
                    //                                     color: Colors.black54),
                    //                                 minFontSize: 15,
                    //                                 maxLines: 1,
                    //                                 overflow: TextOverflow.ellipsis,
                    //                               ),
                    //                               const SizedBox(
                    //                                 height: 5,
                    //                               ),
                    //                               // decoration: TextDecoration.lineThrough,
                    //                               Row(
                    //                                 children: const [
                    //                                   Text(
                    //                                     '\u{20B9} 399',
                    //                                     style: TextStyle(
                    //                                         fontWeight: FontWeight.bold,
                    //                                         fontSize: 17),
                    //                                   ),
                    //                                   SizedBox(
                    //                                     width: 5,
                    //                                   ),
                    //                                   Text(' \u{20B9} 699',
                    //                                       style: TextStyle(
                    //                                           fontSize: 14,
                    //                                           decoration:
                    //                                               TextDecoration.lineThrough,
                    //                                           color: Colors.red)),
                    //                                 ],
                    //                               ),
                    //                             ],
                    //                           ),
                    //                         ),
                    //                       ],
                    //                     ),
                    //                   ),
                    //                   SizedBox(
                    //                     width: MediaQuery.of(context).size.width * 0.49,
                    //                     height: 354.8,
                    //                     child: Column(
                    //                       children: [
                    //                         SizedBox(
                    //                           width: MediaQuery.of(context).size.width * 0.49,
                    //                           height: 235.73,
                    //                           child: Image.network(
                    //                             list[4],
                    //                             fit: BoxFit.fill,
                    //                           ),
                    //                         ),
                    //                         Padding(
                    //                           padding:
                    //                               const EdgeInsets.only(top: 7.5, right: 20),
                    //                           child: Column(
                    //                             crossAxisAlignment: CrossAxisAlignment.start,
                    //                             children: [
                    //                               Row(
                    //                                 crossAxisAlignment:
                    //                                     CrossAxisAlignment.start,
                    //                                 mainAxisAlignment:
                    //                                     MainAxisAlignment.spaceBetween,
                    //                                 children: [
                    //                                   AutoSizeText(
                    //                                     tag[4],
                    //                                     style: TextStyle(
                    //                                         color: Colors.red[500],
                    //                                         fontWeight: FontWeight.w400,
                    //                                         fontSize: 12),
                    //                                     minFontSize: 12,
                    //                                     maxLines: 1,
                    //                                     overflow: TextOverflow.ellipsis,
                    //                                   ),
                    //                                   const Icon(
                    //                                     FontAwesomeIcons.heart,
                    //                                     size: 20,
                    //                                     color: Colors.black54,
                    //                                   )
                    //                                 ],
                    //                               ),
                    //                               const SizedBox(
                    //                                 height: 5,
                    //                               ),
                    //                               const AutoSizeText(
                    //                                 'Men Solid Knitted Round Neck ',
                    //                                 style: TextStyle(
                    //                                     fontWeight: FontWeight.normal,
                    //                                     fontSize: 15.5,
                    //                                     color: Colors.black54),
                    //                                 minFontSize: 15,
                    //                                 maxLines: 1,
                    //                                 overflow: TextOverflow.ellipsis,
                    //                               ),
                    //                               const SizedBox(
                    //                                 height: 5,
                    //                               ),
                    //                               // decoration: TextDecoration.lineThrough,
                    //                               Row(
                    //                                 children: const [
                    //                                   Text(
                    //                                     '\u{20B9} 399',
                    //                                     style: TextStyle(
                    //                                         fontWeight: FontWeight.bold,
                    //                                         fontSize: 17),
                    //                                   ),
                    //                                   SizedBox(
                    //                                     width: 5,
                    //                                   ),
                    //                                   Text(' \u{20B9} 699',
                    //                                       style: TextStyle(
                    //                                           fontSize: 14,
                    //                                           decoration:
                    //                                               TextDecoration.lineThrough,
                    //                                           color: Colors.red)),
                    //                                 ],
                    //                               ),
                    //                             ],
                    //                           ),
                    //                         ),
                    //                       ],
                    //                     ),
                    //                   ),
                    //                   SizedBox(
                    //                     width: MediaQuery.of(context).size.width * 0.49,
                    //                     height: 354.8,
                    //                     child: Column(
                    //                       children: [
                    //                         SizedBox(
                    //                           width: MediaQuery.of(context).size.width * 0.49,
                    //                           height: 235.73,
                    //                           child: Image.network(
                    //                             list[5],
                    //                             fit: BoxFit.fill,
                    //                           ),
                    //                         ),
                    //                         Padding(
                    //                           padding:
                    //                               const EdgeInsets.only(top: 7.5, right: 20),
                    //                           child: Column(
                    //                             crossAxisAlignment: CrossAxisAlignment.start,
                    //                             children: [
                    //                               Row(
                    //                                 crossAxisAlignment:
                    //                                     CrossAxisAlignment.start,
                    //                                 mainAxisAlignment:
                    //                                     MainAxisAlignment.spaceBetween,
                    //                                 children: [
                    //                                   AutoSizeText(
                    //                                     tag[5],
                    //                                     style: TextStyle(
                    //                                         color: Colors.red[500],
                    //                                         fontWeight: FontWeight.w400,
                    //                                         fontSize: 12),
                    //                                     minFontSize: 12,
                    //                                     maxLines: 1,
                    //                                     overflow: TextOverflow.ellipsis,
                    //                                   ),
                    //                                   const Icon(
                    //                                     FontAwesomeIcons.heart,
                    //                                     size: 20,
                    //                                     color: Colors.black54,
                    //                                   )
                    //                                 ],
                    //                               ),
                    //                               const SizedBox(
                    //                                 height: 5,
                    //                               ),
                    //                               const AutoSizeText(
                    //                                 'Men Solid Knitted Round Neck ',
                    //                                 style: TextStyle(
                    //                                     fontWeight: FontWeight.normal,
                    //                                     fontSize: 15.5,
                    //                                     color: Colors.black54),
                    //                                 minFontSize: 15,
                    //                                 maxLines: 1,
                    //                                 overflow: TextOverflow.ellipsis,
                    //                               ),
                    //                               const SizedBox(
                    //                                 height: 5,
                    //                               ),
                    //                               // decoration: TextDecoration.lineThrough,
                    //                               Row(
                    //                                 children: const [
                    //                                   Text(
                    //                                     '\u{20B9} 399',
                    //                                     style: TextStyle(
                    //                                         fontWeight: FontWeight.bold,
                    //                                         fontSize: 17),
                    //                                   ),
                    //                                   SizedBox(
                    //                                     width: 5,
                    //                                   ),
                    //                                   Text(' \u{20B9} 699',
                    //                                       style: TextStyle(
                    //                                           fontSize: 14,
                    //                                           decoration:
                    //                                               TextDecoration.lineThrough,
                    //                                           color: Colors.red)),
                    //                                 ],
                    //                               ),
                    //                             ],
                    //                           ),
                    //                         ),
                    //                       ],
                    //                     ),
                    //                   ),
                    //                   SizedBox(
                    //                     width: MediaQuery.of(context).size.width * 0.49,
                    //                     height: 354.8,
                    //                     child: Column(
                    //                       children: [
                    //                         SizedBox(
                    //                           width: MediaQuery.of(context).size.width * 0.49,
                    //                           height: 235.73,
                    //                           child: Image.network(
                    //                             list[6],
                    //                             fit: BoxFit.fill,
                    //                           ),
                    //                         ),
                    //                         Padding(
                    //                           padding:
                    //                               const EdgeInsets.only(top: 7.5, right: 20),
                    //                           child: Column(
                    //                             crossAxisAlignment: CrossAxisAlignment.start,
                    //                             children: [
                    //                               Row(
                    //                                 crossAxisAlignment:
                    //                                     CrossAxisAlignment.start,
                    //                                 mainAxisAlignment:
                    //                                     MainAxisAlignment.spaceBetween,
                    //                                 children: [
                    //                                   AutoSizeText(
                    //                                     tag[6],
                    //                                     style: TextStyle(
                    //                                         color: Colors.red[500],
                    //                                         fontWeight: FontWeight.w400,
                    //                                         fontSize: 12),
                    //                                     minFontSize: 12,
                    //                                     maxLines: 1,
                    //                                     overflow: TextOverflow.ellipsis,
                    //                                   ),
                    //                                   const Icon(
                    //                                     FontAwesomeIcons.heart,
                    //                                     size: 20,
                    //                                     color: Colors.black54,
                    //                                   )
                    //                                 ],
                    //                               ),
                    //                               const SizedBox(
                    //                                 height: 5,
                    //                               ),
                    //                               const AutoSizeText(
                    //                                 'Men Solid Knitted Round Neck ',
                    //                                 style: TextStyle(
                    //                                     fontWeight: FontWeight.normal,
                    //                                     fontSize: 15.5,
                    //                                     color: Colors.black54),
                    //                                 minFontSize: 15,
                    //                                 maxLines: 1,
                    //                                 overflow: TextOverflow.ellipsis,
                    //                               ),
                    //                               const SizedBox(
                    //                                 height: 5,
                    //                               ),
                    //                               // decoration: TextDecoration.lineThrough,
                    //                               Row(
                    //                                 children: const [
                    //                                   Text(
                    //                                     '\u{20B9} 399',
                    //                                     style: TextStyle(
                    //                                         fontWeight: FontWeight.bold,
                    //                                         fontSize: 17),
                    //                                   ),
                    //                                   SizedBox(
                    //                                     width: 5,
                    //                                   ),
                    //                                   Text(' \u{20B9} 699',
                    //                                       style: TextStyle(
                    //                                           fontSize: 14,
                    //                                           decoration:
                    //                                               TextDecoration.lineThrough,
                    //                                           color: Colors.red)),
                    //                                 ],
                    //                               ),
                    //                             ],
                    //                           ),
                    //                         ),
                    //                       ],
                    //                     ),
                    //                   ),
                    //                   SizedBox(
                    //                     width: MediaQuery.of(context).size.width * 0.49,
                    //                     height: 354.8,
                    //                     // color: Colors.white,
                    //                     child: Column(
                    //                       children: [
                    //                         SizedBox(
                    //                           width: MediaQuery.of(context).size.width * 0.49,
                    //                           height: 235.73,
                    //                           child: Image.network(
                    //                             list[7],
                    //                             fit: BoxFit.fill,
                    //                           ),
                    //                         ),
                    //                         Padding(
                    //                           padding:
                    //                               const EdgeInsets.only(top: 7.5, right: 20),
                    //                           child: Column(
                    //                             crossAxisAlignment: CrossAxisAlignment.start,
                    //                             children: [
                    //                               Row(
                    //                                 crossAxisAlignment:
                    //                                     CrossAxisAlignment.start,
                    //                                 mainAxisAlignment:
                    //                                     MainAxisAlignment.spaceBetween,
                    //                                 children: [
                    //                                   AutoSizeText(
                    //                                     tag[7],
                    //                                     style: TextStyle(
                    //                                         color: Colors.red[500],
                    //                                         fontWeight: FontWeight.w400,
                    //                                         fontSize: 12),
                    //                                     minFontSize: 12,
                    //                                     maxLines: 1,
                    //                                     overflow: TextOverflow.ellipsis,
                    //                                   ),
                    //                                   const Icon(
                    //                                     FontAwesomeIcons.heart,
                    //                                     size: 20,
                    //                                     color: Colors.black54,
                    //                                   )
                    //                                 ],
                    //                               ),
                    //                               const SizedBox(
                    //                                 height: 5,
                    //                               ),
                    //                               const AutoSizeText(
                    //                                 'Men Solid Knitted Round Neck ',
                    //                                 style: TextStyle(
                    //                                     fontWeight: FontWeight.normal,
                    //                                     fontSize: 15.5,
                    //                                     color: Colors.black54),
                    //                                 minFontSize: 15,
                    //                                 maxLines: 1,
                    //                                 overflow: TextOverflow.ellipsis,
                    //                               ),
                    //                               const SizedBox(
                    //                                 height: 5,
                    //                               ),
                    //                               // decoration: TextDecoration.lineThrough,
                    //                               Row(
                    //                                 children: const [
                    //                                   Text(
                    //                                     '\u{20B9} 399',
                    //                                     style: TextStyle(
                    //                                         fontWeight: FontWeight.bold,
                    //                                         fontSize: 17),
                    //                                   ),
                    //                                   SizedBox(
                    //                                     width: 5,
                    //                                   ),
                    //                                   Text(' \u{20B9} 699',
                    //                                       style: TextStyle(
                    //                                           fontSize: 14,
                    //                                           decoration:
                    //                                               TextDecoration.lineThrough,
                    //                                           color: Colors.red)),
                    //                                 ],
                    //                               ),
                    //                             ],
                    //                           ),
                    //                         ),
                    //                       ],
                    //                     ),
                    //                   ),
                    //                 ],
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
