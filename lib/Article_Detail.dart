import 'package:flutter/material.dart';

class ArticleDetail extends StatefulWidget {
  const ArticleDetail({super.key});

  @override
  State<ArticleDetail> createState() => _ArticleDetailState();
}

class _ArticleDetailState extends State<ArticleDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 24, 24, 41),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Container(
                    height: 400,
                    width: 600,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(50),
                            bottomLeft: Radius.circular(50)),
                        image: DecorationImage(
                            image: AssetImage('assets/articel4.png'),
                            fit: BoxFit.contain),
                        shape: BoxShape.rectangle),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 70),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  Icons.arrow_back_ios_new_outlined,
                                  color: Colors.white,
                                  size: 25,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 250),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.white54,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.share_outlined,
                                        color: Colors.white,
                                        size: 25,
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.orange,
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.bookmark_outline_outlined,
                                          color: Colors.white,
                                          size: 25,
                                        )),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Arsenal vs Aston Villa\nprediction',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/image 131.jpg'),
                    radius: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Brian Imanuel',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      Text(
                        'May 15, 2020 ',
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite_border_outlined,
                              color: Colors.white,
                              size: 25,
                            )),
                        Text(
                          '1001',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.chat_bubble_outline,
                          color: Colors.white,
                        ),
                        Text(
                          '999',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Arsenal will have to grind it out against\nAston Villa if they are to register',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              Text(
                'League wins. The match is scheduled for \nSunday at the Emirates.',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              Text(
                'TheGunners put forth a real statement of intent\n after their 1-0 win against Manchester United.\n Mikel Artetas side had already surrendered points to Liverpool, Manchester City and ',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              Container(
                height: 60,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: LinearGradient(colors: [
                    const Color.fromARGB(255, 244, 165, 138),
                    const Color.fromARGB(255, 237, 107, 78)
                  ]),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Row(
                    children: [
                      Text(
                        'Read More',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: Colors.white,
                        size: 25,
                      )
                    ],
                  ),
                ),
              )
            ]),
          ),
        ));
  }
}
