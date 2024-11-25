import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 24, 24, 41),
          body: Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Column(
              children: [
                Stack(
                  children: [
                    Center(
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/image 131.jpg'),
                        radius: 70,
                      ),
                    ),
                    Positioned(
                      left: 230,
                      top: 90,
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 23,
                        child: CircleAvatar(
                            backgroundColor: Colors.orangeAccent,
                            radius: 20,
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.edit_outlined,
                                  color: Colors.white,
                                ))),
                      ),
                    )
                  ],
                ),
                Text(
                  'Brian Imanuel',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  '#YNWK till the end 🔥',
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
                Container(
                  height: 50,
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
                            '   My Profile    ',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                        Tab(
                          child: Text(
                            '   Activity    ',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                        Tab(
                          child: Text(
                            '    settings    ',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        )
                      ]),
                ),
                Expanded(
                    child: TabBarView(children: [
// My Profile

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor:
                                      const Color.fromARGB(255, 34, 34, 50),
                                  radius: 25,
                                  child: Icon(
                                    Icons.person_outline,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Name',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 17),
                                      ),
                                      Text(
                                        'Brian Imanuel',
                                        style: TextStyle(
                                            color: Colors.grey.shade400,
                                            fontSize: 15),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 150),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        color: Colors.white,
                                        size: 20,
                                      )),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 70),
                            child: Divider(
                              color: Colors.grey.shade400,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor:
                                      const Color.fromARGB(255, 34, 34, 50),
                                  radius: 25,
                                  child: Icon(
                                    Icons.email_outlined,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Email',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 17),
                                      ),
                                      Text(
                                        'brians213@gmail.com',
                                        style: TextStyle(
                                            color: Colors.grey.shade400,
                                            fontSize: 15),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 100),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        color: Colors.white,
                                        size: 20,
                                      )),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 70),
                            child: Divider(color: Colors.grey.shade400),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: Row(
                              children: [
                                CircleAvatar(
                                    backgroundColor:
                                        const Color.fromARGB(255, 34, 34, 50),
                                    radius: 25,
                                    child: Icon(
                                      Icons.call_outlined,
                                      color: Colors.white,
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Phone',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 17),
                                      ),
                                      Text(
                                        '+62 821 560 641',
                                        style: TextStyle(
                                            color: Colors.grey.shade400,
                                            fontSize: 15),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 130),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        color: Colors.white,
                                        size: 20,
                                      )),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 70),
                            child: Divider(
                              color: Colors.grey.shade400,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor:
                                      const Color.fromARGB(255, 34, 34, 50),
                                  radius: 25,
                                  child: Icon(
                                    Icons.location_on_outlined,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Address',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 17),
                                      ),
                                      Text(
                                        'Long beach, California',
                                        style: TextStyle(
                                            color: Colors.grey.shade400,
                                            fontSize: 15),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 100),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        color: Colors.white,
                                        size: 20,
                                      )),
                                )
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 70),
                            child: Divider(color: Colors.grey.shade400,),
                          )
                        ],
                      ),
                    ),
                  ),

// Activity
Text('')
// settings
                ]))
              ],
            ),
          ),
        ));
  }
}
