import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 24, 24, 41),
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 24, 24, 41),
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.white,
                )),
            title: Text(
              'UEFA Champions League',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor:
                                const Color.fromARGB(255, 34, 34, 50),
                            radius: 50,
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/Arsenal.png'),
                              radius: 30,
                            ),
                          ),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Arsenal',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              )),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Column(
                          children: [
                            Text(
                              '3-2',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 50),
                            ),
                            Text(
                              'Live\n90:15',
                              style: TextStyle(color: Colors.green),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Column(
                          children: [
                            CircleAvatar(
                                backgroundColor:
                                    const Color.fromARGB(255, 34, 34, 50),
                                radius: 50,
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/idezia.png'),
                                  radius: 30,
                                )),
                            Text(
                              'Aston villa',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 35),
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 24, 24, 41),
                        borderRadius: BorderRadius.circular(20)),
                    child: TabBar(
                        dividerColor: Colors.transparent,
                        indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: LinearGradient(colors: [
                              const Color.fromARGB(255, 244, 165, 138),
                              const Color.fromARGB(255, 237, 107, 78)
                            ])),
                        tabs: [
                          Tab(
                              child: Text(
                            '  Match Detail     ',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )),
                          Tab(
                            child: Text(
                              '    Line Up     ',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                          Tab(
                            child: Text(
                              '    H2H    ',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          )
                        ]),
                  ),
                ),
                Expanded(
                    child: TabBarView(children: [
                  //  MyPostTab(),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: Row(
                          children: [
                            Text(
                              '8',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 100),
                              child: Text(
                                'Shooting',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                            ),
                            Text(
                              '12',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Row(
                            children: [
                              Text(
                                '22',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 100),
                                child: Text(
                                  'Attcaks',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                ),
                              ),
                              Text(
                                '29',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: Row(
                          children: [
                            Text(
                              '42',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 92),
                              child: Text(
                                'possesion',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                            ),
                            Text(
                              '58',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Row(
                            children: [
                              Text(
                                '3',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 90),
                                child: Text(
                                  'yellow Cards',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                ),
                              ),
                              Text(
                                '5',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: Row(
                          children: [
                            Text(
                              '8',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 105),
                              child: Text(
                                'Corners',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                            ),
                            Text(
                              '5',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            )
                          ],
                        ),
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 30),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Row(
                                children: [
                                  Text(
                                    'Other Match',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 28,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 150),
                                    child: TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          'See all',
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        )),
                                  )
                                ],
                              ),
                            ),
                          )),
                      Stack(
                        children: [
                          Container(
                            height: 95,
                            width: 380,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 34, 34, 50),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Positioned(
                              left: 300,
                              child: Container(
                                height: 95,
                                width: 80,
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 24, 24, 41),
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(20),
                                        topRight: Radius.circular(20))),
                                alignment: Alignment.center,
                                child: Text(
                                  'FT',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                ),
                              )),
                          Positioned(
                              left: 20,
                              top: 10,
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/Chelsea.png'),
                                    radius: 10,
                                  ),
                                  Text(
                                    ' Chelsea',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 180),
                                    child: Text(
                                      '2',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                  ),
                                ],
                              )),
                          Positioned(
                              top: 50,
                              left: 20,
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/manunited.png'),
                                    radius: 10,
                                  ),
                                  Text(
                                    ' Man united',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 160),
                                    child: Text(
                                      '3',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                  )
                                ],
                              )),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 25),
                        child: Stack(
                          children: [
                            Container(
                              height: 95,
                              width: 380,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromARGB(255, 34, 34, 50),
                              ),
                            ),
                            Positioned(
                                left: 300,
                                child: Container(
                                  height: 95,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(20),
                                        topRight: Radius.circular(20)),
                                    color:
                                        Color.fromARGB(255, 12, 12, 46),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'FT',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                )),
                            Positioned(
                                left: 20,
                                top: 50,
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: AssetImage(
                                          'assets/Southampton F.C..png'),
                                      radius: 10,
                                    ),
                                    Text(
                                      ' southamton',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 155),
                                      child: Text(
                                        '0',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                    ),
                                  ],
                                )),
                            Positioned(
                                left: 20,
                                top: 10,
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: AssetImage(
                                          'assets/Tottenham Hotspur F.C..png'),
                                      radius: 10,
                                    ),
                                    Text(
                                      ' Tottenham',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 160),
                                      child: Text(
                                        '1',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                    )
                                  ],
                                )),
                          ],
                        ),
                      ),
                      // Stack(
                      //   children: [
                      //     Container(
                      //       height: 95,
                      //       width: 380,
                      //       decoration: BoxDecoration(
                      //         borderRadius: BorderRadius.circular(20),
                      //         color: const Color.fromARGB(255, 34, 34, 50),
                      //       ),
                      //     ),
                      //     Positioned(
                      //         left: 300,
                      //         child: Container(
                      //           height: 95,
                      //           width: 80,
                      //           decoration: BoxDecoration(
                      //             borderRadius: BorderRadius.only(
                      //                 bottomRight: Radius.circular(20),
                      //                 topRight: Radius.circular(20)),
                      //             color: const Color.fromARGB(255, 24, 24, 41),
                      //           ),
                      //           alignment: Alignment.center,
                      //           child: Text(
                      //             'FT',
                      //             style: TextStyle(
                      //                 color: Colors.white, fontSize: 18),
                      //           ),
                      //         )),
                      //     Positioned(
                      //         left: 20,
                      //         top: 50,
                      //         child: Row(
                      //           crossAxisAlignment: CrossAxisAlignment.center,
                      //           children: [
                      //             CircleAvatar(
                      //               backgroundImage:
                      //                   AssetImage('assets/manunited.png'),
                      //               radius: 10,
                      //             ),
                      //             Text(
                      //               ' Man united',
                      //               style: TextStyle(
                      //                   color: Colors.white, fontSize: 18),
                      //             ),
                      //             Padding(
                      //               padding: const EdgeInsets.only(left: 140),
                      //               child: Text(
                      //                 '0',
                      //                 style: TextStyle(
                      //                     color: Colors.white, fontSize: 18),
                      //               ),
                      //             ),
                      //           ],
                      //         )),
                      //     Positioned(
                      //         left: 20,
                      //         top: 10,
                      //         child: Row(
                      //           crossAxisAlignment: CrossAxisAlignment.center,
                      //           children: [
                      //             CircleAvatar(
                      //               backgroundImage: AssetImage(
                      //                   'assets/nGfV05dipbAc7zzojivKew_64x64.png'),
                      //               radius: 10,
                      //             ),
                      //             Text(
                      //               '  Liverpool',
                      //               style: TextStyle(
                      //                   color: Colors.white, fontSize: 18),
                      //             ),
                      //             Padding(
                      //               padding: const EdgeInsets.only(left: 160),
                      //               child: Text(
                      //                 '7',
                      //                 style: TextStyle(
                      //                     color: Colors.white, fontSize: 18),
                      //               ),
                      //             )
                      //           ],
                      //         )),
                      //   ],
                      // )
                    ],
                  ),
                  //     MyReelsTab(),
                  Column(
                    children: [
                      Row(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              'Formation',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                          ),
                          Text(
                            '(4-2-3-1)',
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 100),
                        child: Row(
                          children: [
                            Container(
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                gradient: LinearGradient(colors: [
                                  const Color.fromARGB(255, 244, 165, 138),
                                  const Color.fromARGB(255, 237, 107, 78)
                                ]),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                'Arsenal',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                'Aston villa',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      Row(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              'Formation',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                          ),
                          Text(
                            '(4-2-3-1)',
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                          )
                        ],
                      ),
                    ],
                  ),
                ]))
              ],
            ),
          ),
        ));
  }
}
