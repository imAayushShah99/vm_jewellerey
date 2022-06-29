import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:vm_jewellerey/wishlist.dart';

import 'cart.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> catgImage = [
    'https://www.tanishq.co.in/wps/wcm/connect/tanishq/bffc027a-f2be-4404-8927-02e7f54fbd1c/Category+circle+Gold+Coin+160+x+160px.png?MOD=AJPERES&CACHEID=ROOTWORKSPACE.Z18_90IA1H80O0RT10QIMVSTFU3006-bffc027a-f2be-4404-8927-02e7f54fbd1c-nSYv0MZ',
    'https://www.tanishq.co.in/wps/wcm/connect/tanishq/3e278b87-3dc5-4ed8-9f63-11aa1d11cbaf/Category+circle+EARRINGS+160+x+160px.png?MOD=AJPERES&CACHEID=ROOTWORKSPACE.Z18_90IA1H80O0RT10QIMVSTFU3006-3e278b87-3dc5-4ed8-9f63-11aa1d11cbaf-nSYv4Wo',
    'https://www.tanishq.co.in/wps/wcm/connect/tanishq/d9dfbaf4-cb96-4aef-9ce2-5320fe02bb03/Category+circle+PENDANTS+160+x+160px.png?MOD=AJPERES&CACHEID=ROOTWORKSPACE.Z18_90IA1H80O0RT10QIMVSTFU3006-d9dfbaf4-cb96-4aef-9ce2-5320fe02bb03-nSYv8uu',
    'https://www.tanishq.co.in/wps/wcm/connect/tanishq/6726ce10-0d7c-4f5f-8078-64ce0282e677/Category+circle+Finger+Rings+160+x+160px.png?MOD=AJPERES&CACHEID=ROOTWORKSPACE.Z18_90IA1H80O0RT10QIMVSTFU3006-6726ce10-0d7c-4f5f-8078-64ce0282e677-nSYvbw4',
    'https://www.tanishq.co.in/wps/wcm/connect/tanishq/87bc5b27-9131-4a12-a4a7-9eeda942e7b5/Category+circle+Mangalsutra+160+x+160px.png?MOD=AJPERES&CACHEID=ROOTWORKSPACE.Z18_90IA1H80O0RT10QIMVSTFU3006-87bc5b27-9131-4a12-a4a7-9eeda942e7b5-nSYveQB',
    'https://www.tanishq.co.in/wps/wcm/connect/tanishq/52d947e5-5c09-45e8-b563-82fad0227610/Category+circle+Necklace+160+x+160px.png?MOD=AJPERES&CACHEID=ROOTWORKSPACE.Z18_90IA1H80O0RT10QIMVSTFU3006-52d947e5-5c09-45e8-b563-82fad0227610-nY1gicU',
    'https://www.tanishq.co.in/wps/wcm/connect/tanishq/52d947e5-5c09-45e8-b563-82fad0227610/Category+circle+Necklace+160+x+160px.png?MOD=AJPERES&CACHEID=ROOTWORKSPACE.Z18_90IA1H80O0RT10QIMVSTFU3006-52d947e5-5c09-45e8-b563-82fad0227610-nY1gicU',
  ];
  final CarouselController _controller = CarouselController();
  int _current = 0;
  List<String> list = [
    'https://stage-first.vmmuslunkar.com/public/Admin-Dashboard/images/index/61.jpg',
    'https://stage-first.vmmuslunkar.com/public/Admin-Dashboard/images/index/46.jpg',
    'https://stage-first.vmmuslunkar.com/public/Admin-Dashboard/images/index/40.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 9, 62, 11),
        title: const Text('VM Muslunkar'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const Wishlist()),
              // );
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
            children: [
              SizedBox(
                height: 110,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: catgImage.length,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (ctx, index) {
                    // return Container(
                    //   height: 300,
                    //   margin: const EdgeInsets.all(20),
                    //   decoration: BoxDecoration(
                    //       image: DecorationImage(
                    //         image: NetworkImage(catgImage[index]),
                    //         // fit: BoxFit.cover,
                    //       ),
                    //       border: Border.all(color: Colors.blue, width: 10),
                    //       borderRadius: BorderRadius.circular(30)),
                    // );

                    return GestureDetector(
                      // child: Container(
                      //   child: Image(image:  NetworkImage(catgImage[index])),
                      //   decoration: BoxDecoration(
                      //     color: const Color(0xff7c94b6),
                      //     // image: DecorationImage(
                      //     //   image: NetworkImage(catgImage[index]),
                      //     //   fit: BoxFit.cover,
                      //     // ),
                      //     border: Border.all(
                      //       color: Colors.brown,
                      //       width: 2,
                      //     ),
                      //     borderRadius: BorderRadius.circular(12),
                      //   ),
                      // ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.brown, width: 2),
                          ),
                          child: Image(
                            // height: 110,
                            width: 120,
                            isAntiAlias: false,
                            image: NetworkImage(
                              catgImage[index],
                            ),
                            // ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              // const SizedBox(
              //   height: 20,
              // ),
              CarouselSlider(
                options: CarouselOptions(
                  viewportFraction: 0.98,
                  // aspectRatio: ,
                  height: 200.0,
                  autoPlay: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
                items: list.map((item) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          // padding: const EdgeInsets.symmetric(horizontal: ),
                          padding: const EdgeInsets.only(
                              left: 5, right: 5, bottom: 20, top: 10),
                          // margin: const EdgeInsets.all(10),
                          // margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: const BoxDecoration(),
                          child: Image.network(
                            item,
                            fit: BoxFit.fill,
                          ));
                    },
                  );
                }).toList(),
              ),
              const SizedBox(
                height: 0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: list.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(entry.key),
                    child: Container(
                      width: 9.0,
                      height: 9.0,
                      margin: const EdgeInsets.only(
                        bottom: 0,
                        left: 4,
                        right: 4,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (_current == entry.key
                                ? const Color.fromARGB(255, 7, 7, 7)
                                : Colors.blue[200]
                            // color: Color(0xFFFF4E00)
                            //     .withOpacity(_current == entry.key ? 0.9 : 0.4),
                            ),
                      ),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(
                height: 20,
              ),
              Image.network(
                  'https://stage-first.vmmuslunkar.com/public/Admin-Dashboard/images/index/43.jpg'),
              const SizedBox(
                height: 15,
              ),
              const Text(
                '  Golden Harvest',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      Icon(
                        Icons.payment,
                        size: 40,
                      ),
                      Text('instaPay')
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(
                        Icons.diamond_sharp,
                        size: 40,
                      ),
                      Text('Open New Account')
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(
                        Icons.calculate,
                        size: 40,
                      ),
                      Text('Benefit calculator')
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              const Text(
                '  Top Picks',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: const Image(
                            image: NetworkImage(
                              'https://staticimg.titan.co.in/Tanishq/Banners/home/Regional/MD_480x480_Gold.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: const Image(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://staticimg.titan.co.in/Tanishq/Banners/home/Regional/MD_480x480_Pearls.jpg'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.035,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: const Image(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://staticimg.titan.co.in/Tanishq/Banners/home/Regional/MD_480x480_Diamond.jpg'),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: const Image(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://staticimg.titan.co.in/Tanishq/Banners/home/Regional/MD_480x480_Gold.jpg'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              const Text(
                '  Stunning Earings',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://staticimg.titan.co.in/Tanishq/Banners/home/CategorySpotlight/Earring_new950x465.jpg')),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: const Image(
                            image: NetworkImage(
                              'https://staticimg.titan.co.in/Tanishq/Banners/home/CategorySpotlight/Artboard1.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: const Image(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://staticimg.titan.co.in/Tanishq/Banners/home/CategorySpotlight/Artboard2.png'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.035,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: const Image(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://staticimg.titan.co.in/Tanishq/Banners/home/CategorySpotlight/Artboard4.png'),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: const Image(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://staticimg.titan.co.in/Tanishq/Banners/home/CategorySpotlight/Artboard3.png'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              const Text(
                '  Shop By Gender',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://staticimg.titan.co.in/Tanishq/Banners/home/gender/Men2.jpg')),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Image(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://staticimg.titan.co.in/Tanishq/Banners/home/gender/Women2.jpg')),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Image(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://staticimg.titan.co.in/Tanishq/Banners/home/gender/Kids2.jpg')),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
