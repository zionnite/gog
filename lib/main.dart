import 'package:flutter/material.dart';
import 'package:flutter_custom_carousel_slider/flutter_custom_carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<CarouselItem> itemList = [
    CarouselItem(
      image: const NetworkImage(
        'https://miro.medium.com/max/1400/1*RpaR1pTpRa0PUdNdfv4njA.png',
      ),
      boxDecoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset.bottomCenter,
          end: FractionalOffset.topCenter,
          colors: [
            Colors.blueAccent.withOpacity(1),
            Colors.black.withOpacity(.3),
          ],
          stops: const [0.0, 1.0],
        ),
      ),
      title: 'Push your creativity to its limits by reimagining this classic puzzle!',
      titleTextStyle: const TextStyle(
        fontSize: 12,
        color: Colors.white,
      ),
      leftSubtitle: '\$51,046 in prizes',
      rightSubtitle: '4882 participants',
      rightSubtitleTextStyle: const TextStyle(
        fontSize: 12,
        color: Colors.black,
      ),
      onImageTap: (i) {},
    ),
    CarouselItem(
      image: const NetworkImage(
        'https://pbs.twimg.com/profile_banners/1444928438331224069/1633448972/600x200',
      ),
      title: '@coskuncay published flutter_custom_carousel_slider!',
      titleTextStyle: const TextStyle(
        fontSize: 12,
        color: Colors.white,
      ),
      leftSubtitle: '11 Feb 2022',
      rightSubtitle: 'v1.0.0',
      onImageTap: (i) {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.deepPurpleAccent,
              ),
              width: MediaQuery.of(context).size.width,
              child: const Column(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                    'Garden Of Grace',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'International Church',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 1),
              elevation: 10,
              child: CustomCarouselSlider(
                items: itemList,
                height: 300,
                subHeight: 50,
                width: MediaQuery.of(context).size.width,
                autoplay: true,
              ),
            ),
            //Hand Picked
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Hand Picked',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Container(
              height: 150,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Card(
                    child: Container(
                      color: Colors.white,
                      height: 160,
                      width: 120,
                      child: Column(
                        children: [
                          Image.asset('assets/images/1.jpeg'),
                          const Text(
                            'Just Title to where its going in this direciton',
                            style: TextStyle(),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      color: Colors.white,
                      height: 160,
                      width: 120,
                      child: Column(
                        children: [
                          Image.asset('assets/images/1.jpeg'),
                          const Text(
                            'Just Title to where its going in this direciton',
                            style: TextStyle(),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      color: Colors.white,
                      height: 160,
                      width: 120,
                      child: Column(
                        children: [
                          Image.asset('assets/images/1.jpeg'),
                          const Text(
                            'Just Title to where its going in this direciton',
                            style: TextStyle(),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      color: Colors.white,
                      height: 160,
                      width: 120,
                      child: Column(
                        children: [
                          Image.asset('assets/images/1.jpeg'),
                          const Text(
                            'Just Title to where its going in this direciton',
                            style: TextStyle(),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //pst obi Teaching
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Pastor\'s Obi Teaching Note',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.deepPurple.shade700,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 12),
                      child: Text(
                        'View All',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              height: 280,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Card(
                    child: Container(
                      color: Colors.white,
                      height: 260,
                      width: 350,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/1.jpeg',
                            fit: BoxFit.cover,
                            width: 400,
                            height: 200,
                          ),
                          const Text(
                            'Just Title to where its going in this direcitonJust Title to where its going in this direcitonJust Title to where its going in this direciton',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                            maxLines: 1,
                          ),
                          const Expanded(
                            child: Text(
                              'Just Title to where its going in this direcitonJust Title to where its going in this direcitonJust Title to where its going in this direciton',
                              style: TextStyle(),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      color: Colors.white,
                      height: 260,
                      width: 350,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/1.jpeg',
                            fit: BoxFit.cover,
                            width: 400,
                            height: 200,
                          ),
                          const Text(
                            'Just Title to where its going in this direcitonJust Title to where its going in this direcitonJust Title to where its going in this direciton',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                            maxLines: 1,
                          ),
                          const Expanded(
                            child: Text(
                              'Just Title to where its going in this direcitonJust Title to where its going in this direcitonJust Title to where its going in this direciton',
                              style: TextStyle(),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //upcoming event
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Upcoming Event',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.deepPurple.shade700,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 12),
                      child: Text(
                        'View All',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              height: 280,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Card(
                    child: Container(
                      color: Colors.white,
                      height: 260,
                      width: 422,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/1.jpeg',
                            fit: BoxFit.cover,
                            width: 450,
                            height: 200,
                          ),
                          const Text(
                            'Just Title to where its going in this direcitonJust Title to where its going in this direcitonJust Title to where its going in this direciton',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                            maxLines: 1,
                          ),
                          const Expanded(
                            child: Text(
                              'Just Title to where its going in this direcitonJust Title to where its going in this direcitonJust Title to where its going in this direciton',
                              style: TextStyle(),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      color: Colors.white,
                      height: 260,
                      width: 350,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/1.jpeg',
                            fit: BoxFit.cover,
                            width: 400,
                            height: 200,
                          ),
                          const Text(
                            'Just Title to where its going in this direcitonJust Title to where its going in this direcitonJust Title to where its going in this direciton',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                            maxLines: 1,
                          ),
                          const Expanded(
                            child: Text(
                              'Just Title to where its going in this direcitonJust Title to where its going in this direcitonJust Title to where its going in this direciton',
                              style: TextStyle(),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //Recommend Teaching
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Recommended Teaching',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.deepPurple.shade700,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 12),
                      child: Text(
                        'View All',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 150,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Card(
                    child: Container(
                      color: Colors.white,
                      height: 160,
                      width: 120,
                      child: Column(
                        children: [
                          Image.asset('assets/images/1.jpeg'),
                          const Text(
                            'Just Title to where its going in this direciton',
                            style: TextStyle(),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      color: Colors.white,
                      height: 160,
                      width: 120,
                      child: Column(
                        children: [
                          Image.asset('assets/images/1.jpeg'),
                          const Text(
                            'Just Title to where its going in this direciton',
                            style: TextStyle(),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      color: Colors.white,
                      height: 160,
                      width: 120,
                      child: Column(
                        children: [
                          Image.asset('assets/images/1.jpeg'),
                          const Text(
                            'Just Title to where its going in this direciton',
                            style: TextStyle(),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      color: Colors.white,
                      height: 160,
                      width: 120,
                      child: Column(
                        children: [
                          Image.asset('assets/images/1.jpeg'),
                          const Text(
                            'Just Title to where its going in this direciton',
                            style: TextStyle(),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
