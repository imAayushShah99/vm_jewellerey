import 'package:flutter/material.dart';

import 'cart.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({super.key});

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
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
        title: const Text('Wishlist'),
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
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // SizedBox(
                //   height: 5,
                // ),
                Container(
                  color: Colors.grey[300],
                  // height: 800,
                  // width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(15.0),

                  child: GridView.builder(
                      itemCount: 6,
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
                              mainAxisExtent: 300),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => const ProductDetails()),
                            // );
                          },
                          child: Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(
                              // borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            width: MediaQuery.of(context).size.width * 0.49,
                            height: 150,
                            // margin: EdgeInsets.all(value),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: const [Icon(Icons.cancel)],
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.49,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // const SizedBox(
                                      //   height: 5,
                                      // ),

                                      const SizedBox(
                                        height: 5,
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
                                        children: [
                                          // Text(
                                          //   ' \u{20B9} 40,000',
                                          //   style: TextStyle(
                                          //       fontSize: 14,
                                          //       decoration:
                                          //           TextDecoration.lineThrough,
                                          //       color: Colors.grey),
                                          // ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'Round Nalure',
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black45),
                                              ),
                                              const Text(
                                                'Inspired Gold Stud',
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black45),
                                              ),
                                              const SizedBox(
                                                height: 7,
                                              ),
                                              Row(
                                                children: const [
                                                  Icon(Icons
                                                      .shopping_cart_outlined),
                                                  Text(
                                                    ' MOVE TO CART',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                          // Icon(
                                          //   FontAwesomeIcons.heart,
                                          //   size: 20,
                                          //   color: Colors.black54,
                                          // ),
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
      ),
    );
  }
}
