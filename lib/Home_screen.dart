import 'package:finalfootball/Detail-Team,match.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 24, 24, 41),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 24, 24, 41),
        title: Text(
          'Live Score',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search_outlined,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications_none_outlined,
                    color: Colors.white,
                  ))
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                Container(
                  height: 210,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(colors: [
                        const Color.fromARGB(255, 36, 107, 253),
                        const Color.fromARGB(255, 12, 12, 105)
                      ])),
                ),
                Positioned(
                  left: 28,
                  top: 30,
                  child: Container(
                    height: 31,
                    width: 115,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
                Positioned(
                  left: 34,
                  top: 34,
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/image 3.png'),
                        radius: 10,
                      ),
                      Text(
                        '  Football',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    left: 25,
                    top: 60,
                    child: Text(
                      'Liverpool UEFA \nChampion League\nCelebration',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    )),
                Positioned(
                    left: 30,
                    top: 160,
                    child: Text(
                      'Yesterday,06:30 PM',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )),
                Positioned(
                    left: 150,
                    top: 25,
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image:
                            AssetImage('assets/image-removebg-preview 4.png'),
                      )),
                    ))
              ]),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 135,
                              width: 135,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                    const Color.fromARGB(255, 244, 165, 138),
                                    const Color.fromARGB(255, 237, 107, 78)
                                  ]),
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Container(
                                height: 135,
                                width: 135,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color.fromARGB(255, 34, 34, 50),
                                ),
                              ),
                            ),
                            Container(
                              height: 135,
                              width: 135,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromARGB(255, 34, 34, 50),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Container(
                                height: 135,
                                width: 135,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color.fromARGB(255, 34, 34, 50),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Container(
                                height: 135,
                                width: 135,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color.fromARGB(255, 34, 34, 50),
                                ),
                              ),
                            ),
                            Container(
                              height: 135,
                              width: 135,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromARGB(255, 34, 34, 50),
                              ),
                            )
                          ],
                        ),
                        Positioned(
                          left: 40,
                          top: 40,
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/image 3.png'),
                                radius: 25,
                              ),
                              Text(
                                'Soccer',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                            left: 190,
                            top: 40,
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/image 4.png'),
                                  radius: 25,
                                ),
                                Text(
                                  'Basketball',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              ],
                            )),
                        Positioned(
                            left: 350,
                            top: 40,
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/image 2.png'),
                                  radius: 25,
                                ),
                                Text(
                                  'Football',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                )
                              ],
                            )),
                        Positioned(
                            left: 500,
                            top: 40,
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/baseball.png'),
                                  radius: 25,
                                ),
                                Text(
                                  'Baseball',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                )
                              ],
                            )),
                        Positioned(
                            left: 650,
                            top: 40,
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage(' assets/tennis.png'),
                                  child: Icon(
                                    Icons.sports_tennis,
                                  ),
                                  radius: 25,
                                ),
                                Text(
                                  'Tennis',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                )
                              ],
                            )),
                        Positioned(
                            left: 800,
                            top: 40,
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage(' assets/image 1.png'),
                                  radius: 25,
                                ),
                                Text(
                                  'Volleyball',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                )
                              ],
                            )),
                      ],
                    ),
                  )),
              Row(
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/image 10.png'),
                            fit: BoxFit.contain),
                        shape: BoxShape.rectangle),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'La Liga',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        'Spain',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 210),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.white,
                        )),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Stack(
                  children: [
                    Container(
                      height: 95,
                      width: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 34, 34, 50),
                      ),
                    ),
                    Positioned(
                        left: 280,
                        child: Container(
                          height: 95,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                            color: Color.fromARGB(255, 1, 1, 56),
                            // color:
                            // Colors.white,
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            'HT',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        )),
                    Positioned(
                      top: 20,
                      left: 20,
                      child: CircleAvatar(
                          backgroundColor:
                              const Color.fromARGB(255, 24, 24, 41),
                          radius: 25,
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/barcelona.png'),
                            radius: 15,
                          )),
                    ),
                    Positioned(
                        left: 60,
                        top: 20,
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
                            Column(
                              children: [
                                Text(
                                  'Barcelona  vs Real Madrid',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                ),
                                Text(
                                  '   4        -      0      ',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                ),
              ),
              Stack(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('assets/image 9.png'),
                        )),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Premier League',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Text(
                            'England',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 150),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.white,
                            )),
                      )
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Stack(
                  children: [
                    Container(
                      height: 95,
                      width: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 34, 34, 50),
                      ),
                    ),
                    Positioned(
                        left: 280,
                        child: Container(
                          height: 95,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                          color: Color.fromARGB(255, 1, 1, 56),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            'FT',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        )),
                    Positioned(
                        top: 20,
                        left: 70,
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor:
                                  const Color.fromARGB(255, 24, 24, 41),
                              radius: 25,
                              child: CircleAvatar(
                                backgroundImage: AssetImage(
                                    'assets/nGfV05dipbAc7zzojivKew_64x64.png'),
                                radius: 15,
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  'Aston Villa  vs  Liverpool',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                ),
                                Text(
                                  '   2         -        3',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                ),
                              ],
                            )
                          ],
                        )),
                    Positioned(
                        top: 20,
                        left: 30,
                        child: CircleAvatar(
                            backgroundColor:
                                const Color.fromARGB(255, 24, 24, 41),
                            radius: 25,
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/idezia.png'),
                              radius: 15,
                            ))),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/UEFA_Champions_League-Logo.wine.png')),
                    ),
                  ),
                  Text(
                    'UEFA Champions League',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Detail(),
                              ));
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.white,
                        )),
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    height: 95,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 34, 34, 50),
                    ),
                  ),
                  Positioned(
                      left: 280,
                      child: Container(
                        height: 95,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                       color: Color.fromARGB(255, 1, 1, 56),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          ' Live \n90.15',
                          style: TextStyle(color: Colors.green),
                        ),
                      )),
                  Positioned(
                      left: 20,
                      top: 10,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/Arsenal.png'),
                            radius: 10,
                          ),
                          Text(
                            '  Arsenal',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 160),
                            child: Text(
                              '2',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          )
                        ],
                      )),
                  Positioned(
                      left: 20,
                      top: 50,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/idezia.png'),
                            radius: 10,
                          ),
                          Text(
                            '  Aston Villa',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 140),
                            child: Text(
                              '3',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          )
                        ],
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
