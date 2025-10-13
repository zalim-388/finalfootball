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
  int selectedindex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 24, 24, 41),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Column(children: [
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
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 5,
                        childAspectRatio: 1,
                      ),
                      itemCount: images.length,
                      itemBuilder: (BuildContext, int index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedindex = index;
                            });
                          },
                          child: Container(
                            height: 115,
                            width: 115,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: selectedindex == index
                                    ? Color(0xffe88a64)
                                    : Color(0xff222232)),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Color(222232),
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
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ]))));
  }
}
