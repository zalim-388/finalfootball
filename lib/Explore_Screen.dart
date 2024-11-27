import 'package:finalfootball/Search_screen.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 24, 24, 41),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: GestureDetector(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SearchScreen(),));
                    },
                      child: Container(
                        height: 70,
                        width: 350,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 34, 34, 50),
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SearchScreen(),
                                  ));
                            },
                            child: TextField(
                              decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.search_outlined,
                                    size: 30,
                                    color: Colors.grey.shade700,
                                  ),
                                  hintText:
                                      'Search for news, team, match, etc...',
                                  hintStyle:
                                      TextStyle(color: Colors.grey.shade700),
                                  border: InputBorder.none),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  // Container()

                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 24, 24, 41),
                    ),
                    child: TabBar(
                        isScrollable: true,
                        dividerColor: Colors.transparent,
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(colors: [
                            const Color.fromARGB(255, 244, 165, 138),
                            const Color.fromARGB(255, 237, 107, 78)
                          ]),
                        ),
                        tabs: [
                          Tab(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/image 3.png'),
                                  radius: 20,
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  '  Soccer  ',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                          Tab(
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/image 4.png'),
                                  radius: 20,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'Basketball',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                )
                              ],
                            ),
                          ),
                          Tab(
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/image 2.png'),
                                  radius: 20,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '  Football  ',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                )
                              ],
                            ),
                          ),
                          Tab(
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/baseball.png'),
                                  radius: 20,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'baseball',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                          Tab(
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/tennis.png'),
                                  radius: 20,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Tennis',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                )
                              ],
                            ),
                          ),
                          Tab(
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/image 1.png'),
                                  radius: 20,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Vollyball',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                )
                              ],
                            ),
                          ),
                        ]),
                  ),

                  Column(
                    children: [
                        Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage('assets/image 135.png'),
                                fit: BoxFit.contain),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Roumor Has It: Lampard’s\n position under threat, ...',
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                '04 JAN 2021, 14:16',
                                style: TextStyle(color: Colors.grey.shade400),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 60),
                          child: Icon(
                            Icons.bookmark_outline_outlined,
                            size: 30,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage('assets/articel5.png'),
                                fit: BoxFit.contain),
                            shape: BoxShape.rectangle),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Artrta sees ‘natural leader’\nTierney as a future, ...',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              '04 JAN 2021, 05:30',
                              style: TextStyle(color: Colors.grey.shade400),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 60),
                        child: Icon(
                          Icons.bookmark_outline_outlined,
                          size: 30,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage('assets/articel2.png'),
                                  fit: BoxFit.contain),
                              shape: BoxShape.rectangle),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Athletic Bilbao to appoint\nMarcelino as coach until, ...',
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                '04 JAN 2021, 09:23',
                                style: TextStyle(color: Colors.grey.shade400),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 60),
                          child: Icon(
                            Icons.bookmark_outline_outlined,
                            size: 30,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage('assets/4.png'),
                                fit: BoxFit.contain),
                            shape: BoxShape.rectangle),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Barcelona suffer too much\nlate in games, says Ter Stegen',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              '04 JAN 2021, 06:06',
                              style: TextStyle(color: Colors.grey.shade400),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 60),
                        child: Icon(
                          Icons.bookmark_outline_outlined,
                          size: 30,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),


                    ],
                  ),

                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Trending News',
                        style: TextStyle(color: Colors.white, fontSize: 35),
                      )),

                  SingleChildScrollView(scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 250,width: 350,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/articel4.png'),
                                  fit: BoxFit.contain),
                              shape: BoxShape.rectangle),
                        ),
                        Container(
                          height: 250,width: 350,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/articel4.png'),
                                  fit: BoxFit.contain),
                              shape: BoxShape.rectangle),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
