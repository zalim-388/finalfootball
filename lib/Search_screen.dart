import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 24, 24, 41),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 34),
                    child: Row(
                      children: [
                        Container(
                            height: 80,
                            width: 300,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 34, 34, 50),
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: TextField(
                                decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.search_outlined,
                                      size: 25,
                                      color: Colors.grey,
                                    ),
                                    hintText: 'Search your team ...',
                                    hintStyle: TextStyle(
                                        color: Colors.grey.shade400,
                                        fontSize: 16),
                                    border: InputBorder.none),
                              ),
                            )),
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Cancel',
                              style: TextStyle(color: Colors.white),
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 24, 24, 41),
                      ),
                      child: TabBar(
                          dividerColor: Colors.transparent,
                          isScrollable: true,
                          indicator: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(colors: [
                                const Color.fromARGB(255, 244, 165, 138),
                                const Color.fromARGB(255, 237, 107, 78)
                              ])),
                          tabs: [
                            Tab(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '🔥',
                                    style: TextStyle(fontSize: 40),
                                  ),
                                  SizedBox(
                                    height: 10,
                                    width: 10,
                                  ),
                                  Text(
                                    'Live score',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                            Tab(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '📰',
                                    style: TextStyle(fontSize: 40),
                                  ),
                                  SizedBox(
                                    height: 10,
                                    width: 10,
                                  ),
                                  Text(
                                    'Newspaper',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                            Tab(
                              child: Row(
                                children: [
                                  Text(
                                    '#️⃣',
                                    style: TextStyle(fontSize: 40),
                                  ),
                                  SizedBox(
                                    height: 10,
                                    width: 10,
                                  ),
                                  Text(
                                    'Hastags',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                            Tab(
                              child: Row(
                                children: [
                                  Text(
                                    '🏟️',
                                    style: TextStyle(fontSize: 40),
                                  ),
                                  SizedBox(
                                    height: 10,
                                    width: 10,
                                  ),
                                  Text(
                                    'Stadium',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  )
                                ],
                              ),
                            )
                          ]),
                    ),
                  ),
                  Expanded(
                      child: TabBarView(children: [
                    // Text(
                    //   ' Live score',
                    //   style: TextStyle(color: Colors.white, fontSize: 16),
                    // ),

                    Stack(children: [
                      Positioned(
                        left: 40, top: 20,
                        child: CircleAvatar(
                          backgroundColor:
                              const Color.fromARGB(255, 24, 24, 41),
                          radius: 25,
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/realmadrid.png'),
                            radius: 15,
                          ),
                        ),
                      ),
                      Positioned(
                          left: 0,
                          top: 20,
                          child: Row(
                            children: [
                              CircleAvatar(
                                  backgroundColor:
                                      const Color.fromARGB(255, 24, 24, 41),
                                  radius: 25,
                                  child: CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/barcelona.png'),
                                    radius: 15,
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: Column(
                                  children: [
                                    Text(
                                      'Barcelona VS Real Madrid',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 17),
                                    ),
                                    Text(
                                      'Monday, 12 Feb 2021 . 02.30 am',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 13),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 55),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.close_outlined,
                                      size: 25,
                                      color: Colors.grey,
                                    )),
                              )
                            ],
                          )),
                      Positioned(
                          top: 90,
                          left: 40,
                          child: CircleAvatar(
                              backgroundColor:
                                  const Color.fromARGB(255, 24, 24, 41),
                              radius: 25,
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/idezia.png'),
                                radius: 15,
                              ))),
                      Positioned(
                          left: 0,
                          top: 90,
                          child: Row(
                            children: [
                              CircleAvatar(
                                  backgroundColor:
                                      const Color.fromARGB(255, 24, 24, 41),
                                  radius: 25,
                                  child: CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/Arsenal.png'),
                                    radius: 15,
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Aersenal VS Aston Villa',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 17),
                                    ),
                                    Text(
                                      'Tuesday, 9 Mar 2021 . 05.00 am',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 13),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 63),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.close_outlined,
                                      color: Colors.grey,
                                      size: 25,
                                    )),
                              )
                            ],
                          )),
                      Positioned(
                          top: 150,
                          left: 40,
                          child: CircleAvatar(
                              backgroundColor:
                                  const Color.fromARGB(255, 24, 24, 41),
                              radius: 25,
                              child: CircleAvatar(
                                backgroundImage: AssetImage(
                                    'assets/nGfV05dipbAc7zzojivKew_64x64.png'),
                                radius: 15,
                              ))),
                      Positioned(
                        top: 150,
                        left: 0,
                        child: Row(
                          children: [
                            CircleAvatar(
                                backgroundColor:
                                    const Color.fromARGB(255, 24, 24, 41),
                                radius: 25,
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/Chelsea.png'),
                                  radius: 15,
                                )),
                            Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Chelsea VS Liverpool',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 17),
                                  ),
                                  Text(
                                    'Satuday, 14 Mar 2021 . 01.00 am',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 13),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 58),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.close_outlined,
                                    color: Colors.grey,
                                    size: 25,
                                  )),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                          top: 220,
                          left: 40,
                          child: CircleAvatar(
                              backgroundColor:
                                  const Color.fromARGB(255, 24, 24, 41),
                              radius: 25,
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/BayernMünchen@2x.png'),
                                radius: 15,
                              ))),
                      Positioned(
                        top: 220,
                        left: 0,
                        child: Row(
                          children: [
                            CircleAvatar(
                                backgroundColor:
                                    const Color.fromARGB(255, 24, 24, 41),
                                radius: 25,
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/Dortmund.png'),
                                  radius: 15,
                                )),
                            Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Dortmund VS  München',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 17),
                                  ),
                                  Text(
                                    'Wednesday, 8 Apr 2021 . 02.30 am',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 13),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.close_outlined,
                                    color: Colors.grey,
                                    size: 25,
                                  )),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                          top: 280,
                          left: 40,
                          child: CircleAvatar(
                              backgroundColor:
                                  const Color.fromARGB(255, 24, 24, 41),
                              radius: 25,
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/Arsenal.png'),
                                radius: 15,
                              ))),
                      Positioned(
                        top: 280,
                        left: 0,
                        child: Row(
                          children: [
                            CircleAvatar(
                                backgroundColor:
                                    const Color.fromARGB(255, 24, 24, 41),
                                radius: 25,
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/realmadrid.png'),
                                  radius: 15,
                                )),
                            Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Real Madrid VS Arsenal',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 17),
                                  ),
                                  Text(
                                    'Friday, 21 Apr 2021 . 00.45 am',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 13),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 70),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.close_outlined,
                                    color: Colors.grey,
                                    size: 25,
                                  )),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                          top: 340,
                          left: 40,
                          child: CircleAvatar(
                              backgroundColor:
                                  const Color.fromARGB(255, 24, 24, 41),
                              radius: 25,
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/watford.png'),
                                radius: 15,
                              ))),
                      Positioned(
                        top: 340,
                        left: 0,
                        child: Row(
                          children: [
                            CircleAvatar(
                                backgroundColor:
                                    const Color.fromARGB(255, 24, 24, 41),
                                radius: 25,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                      'assets/Tottenham Hotspur F.C..png'),
                                  radius: 15,
                                )),
                            Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Tottenham VS Watford',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 17),
                                  ),
                                  Text(
                                    'Friday, 21 Apr 2021 . 02.45 am',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 13),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 70),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.close_outlined,
                                    color: Colors.grey,
                                    size: 25,
                                  )),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                          top: 400,
                          left: 40,
                          child: CircleAvatar(
                              backgroundColor:
                                  const Color.fromARGB(255, 24, 24, 41),
                              radius: 25,
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/fulham.png'),
                                radius: 15,
                              ))),
                      Positioned(
                        top: 400,
                        left: 0,
                        child: Row(
                          children: [
                            CircleAvatar(
                                backgroundColor:
                                    const Color.fromARGB(255, 24, 24, 41),
                                radius: 25,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                      ' assets/56vquJBk5U16Dng7txLXCw_64x64.png'),
                                  radius: 15,
                                )),
                            Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'IpswichTown fc VS Fulham',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 17),
                                  ),
                                  Text(
                                    'Sunday, 2 May 2021 . 04.45 am',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 13),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.close_outlined,
                                    color: Colors.grey,
                                    size: 25,
                                  )),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                          top: 450,
                          left: 40,
                          child: CircleAvatar(
                              backgroundColor:
                                  const Color.fromARGB(255, 24, 24, 41),
                              radius: 25,
                              child: CircleAvatar(
                                backgroundImage: AssetImage(
                                    'assets/nGfV05dipbAc7zzojivKew_64x64.png'),
                                radius: 15,
                              ))),
                      Positioned(
                          left: 0,
                          top: 450,
                          child: Row(
                            children: [
                              CircleAvatar(
                                  backgroundColor:
                                      const Color.fromARGB(255, 24, 24, 41),
                                  radius: 25,
                                  child: CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/Wolfsburg .png'),
                                    radius: 15,
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Wolfsburg VS Liverpool',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 17),
                                    ),
                                    Text(
                                      'Wednesday, 15 May 2021 . 01.00 am',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 43),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.close_outlined,
                                      color: Colors.grey,
                                      size: 25,
                                    )),
                              )
                            ],
                          )),
                    ]),

                    Text(
                      ' Newspaper',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Text(
                      'Hastags',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Text(
                      'Stadium',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )
                  ]))
                ],
              ),
            ),
          ),
        ));
  }
}
