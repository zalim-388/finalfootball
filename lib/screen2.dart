import 'package:finalfootball/bottom_navigator.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  List<String> images = [
    'assets/image 3.png',
    'assets/image 4.png',
    'assets/tennis.png',
    'assets/baseball.png',
    'assets/image 2.png',
    'assets/image 1.png',
  ];
  List<String> TExt = [
    'Soccerball',
    'Basketball',
    'Tennis',
    'Baseball',
    'Football',
    'volleyball'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 24, 24, 41),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '   What sport do\n   you interest?',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 45,
                      fontWeight: FontWeight.w400),
                ),
              ),
              // Align(alignment: Alignment.centerLeft,child:
              Padding(
                padding: const EdgeInsets.only(right: 130),
                child: Text(
                  'You can choose more than one',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),






              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    childAspectRatio: 1,
                  ),
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        CircleAvatar(
                          backgroundColor:
                              const Color.fromARGB(255, 34, 34, 50),
                          radius: 60,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(images[index]),
                            radius: 40,
                          ),
                        ),
                        Text(
                          TExt[index],
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    );
                  },
                ),
              ),

              // Padding(
              //   padding: const EdgeInsets.only(top: 50),
              //   child: Row(
              //     children: [
              //       Column(
              //         children: [
              //           CircleAvatar(
              //               backgroundColor:
              //                   const Color.fromARGB(255, 244, 165, 138),
              //               radius: 60,
              //               child: CircleAvatar(
              //                 backgroundImage: AssetImage('assets/image 3.png'),
              //                 radius: 30,
              //               )),
              //           Text(
              //             'Soccerball',
              //             style: TextStyle(color: Colors.white),
              //           ),
              //           Column(
              //             children: [
              //               CircleAvatar(
              //                   backgroundColor:
              //                       const Color.fromARGB(255, 34, 34, 50),
              //                   radius: 60,
              //                   child: CircleAvatar(
              //                     backgroundImage:
              //                         AssetImage('assets/baseball.png'),
              //                     radius: 30,
              //                   )),
              //               Text(
              //                 'Baseball',
              //                 style: TextStyle(color: Colors.white),
              //               )
              //             ],
              //           ),
              //         ],
              //       ),
              //       Padding(
              //         padding: const EdgeInsets.only(left: 10),
              //         child: Column(
              //           children: [
              //             CircleAvatar(
              //                 backgroundColor:
              //                     const Color.fromARGB(255, 34, 34, 50),
              //                 radius: 60,
              //                 child: CircleAvatar(
              //                   backgroundImage:
              //                       AssetImage('assets/image 4.png'),
              //                   radius: 30,
              //                 )),
              //             Text(
              //               'Basketball',
              //               style: TextStyle(color: Colors.white),
              //             ),
              //             Column(
              //               children: [
              //                 CircleAvatar(
              //                     backgroundColor:
              //                         const Color.fromARGB(255, 34, 34, 50),
              //                     radius: 60,
              //                     child: CircleAvatar(
              //                       backgroundImage:
              //                           AssetImage('assets/tennis.png'),
              //                       radius: 30,
              //                     )),
              //                 Text(
              //                   'Tennis',
              //                   style: TextStyle(color: Colors.white),
              //                 )
              //               ],
              //             )
              //           ],
              //         ),
              //       ),
              //       Padding(
              //         padding: const EdgeInsets.only(left: 10),
              //         child: Column(
              //           children: [
              //             CircleAvatar(
              //                 backgroundColor:
              //                     const Color.fromARGB(255, 34, 34, 50),
              //                 radius: 60,
              //                 child: CircleAvatar(
              //                   backgroundImage:
              //                       AssetImage('assets/image 2.png'),
              //                   radius: 30,
              //                 )),
              //             Text(
              //               'American Football',
              //               style: TextStyle(color: Colors.white),
              //             ),
              //             CircleAvatar(
              //                 backgroundColor:
              //                     const Color.fromARGB(255, 34, 34, 50),
              //                 radius: 60,
              //                 child: CircleAvatar(
              //                   backgroundImage:
              //                       AssetImage('assets/image 1.png'),
              //                   radius: 30,
              //                 )),
              //             Text(
              //               'Volleyball',
              //               style: TextStyle(color: Colors.white),
              //             )
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomNavigator(),
                        ));
                  },
                  child: Container(
                    height: 80,
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue.shade700),
                    alignment: Alignment.center,
                    child: Text(
                      'Continue',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Skip',
                    style: TextStyle(color: Colors.white, fontSize: 23),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
