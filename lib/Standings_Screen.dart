import 'package:finalfootball/Standings_Detail.dart';
import 'package:flutter/material.dart';

class StandingsScreen extends StatefulWidget {
  const StandingsScreen({super.key});

  @override
  State<StandingsScreen> createState() => _StandingsScreenState();
}

class _StandingsScreenState extends State<StandingsScreen> {
 

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 24, 24, 41),
        body: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Container(
                  height: 70,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 34, 34, 50),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search_outlined,
                          color: Colors.grey.shade700,
                          size: 25,
                        ),
                        hintText: 'Search your competition ...',
                        hintStyle: TextStyle(
                          color: Colors.grey.shade700,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),

// Container(),
                Padding(
                  padding: const EdgeInsets.only(left: 00),
                  child: Container(
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
                                  // width: 10,
                                ),
                                const Text(
                                  ' Basketball ',
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
                                  ' baseball  ',
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
                                  ' Tennis  ',
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
                                  ' Vollyball ',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                )
                              ],
                            ),
                          ),
                        ]),
                  ),
                ),

                Expanded(
                    child: TabBarView(children: [
                  // Text(
                  //   '  Soccer  ',
                  //   style: TextStyle(color: Colors.white, fontSize: 15),
                  // ),

                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Row(
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
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
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
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              StandingsDetail(),
                                        ));
                                  },
                                  icon: Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    color: Colors.white,
                                  )),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 250,
                        width: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 34, 34, 50),
                        ),
                        child: DataTable(
                          dividerThickness: 0.0000001,
                          columnSpacing: 13,
                          headingTextStyle: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                          dataTextStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          columns: const [
                            DataColumn(
                                label: Padding(
                              padding: EdgeInsets.only(right: 30),
                              child: Text('Team'),
                            )),
                            DataColumn(label: Text('P')),
                            DataColumn(label: Text('W')),
                            DataColumn(label: Text('L')),
                            DataColumn(label: Text('D')),
                            DataColumn(label: Text('GA')),
                            DataColumn(label: Text('GD')),
                            DataColumn(label: Text('Pts')),
                          ],
                          rows: const [
                            DataRow(cells: [
                              DataCell(Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/barcelona.png'),
                                    radius: 10,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text('Barcelona'),
                                ],
                              )),
                              DataCell(Text('14')),
                              DataCell(Text('11')),
                              DataCell(Text('1')),
                              DataCell(Text('2')),
                              DataCell(Text('42')),
                              DataCell(Text('14')),
                              DataCell(Text('28')),
                            ]),
                            DataRow(cells: [
                              DataCell(Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/realmadrid.png'),
                                    radius: 10,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text('Real Madrid'),
                                ],
                              )),
                              DataCell(Text('13')),
                              DataCell(Text('9')),
                              DataCell(Text('3')),
                              DataCell(Text('1')),
                              DataCell(Text('28')),
                              DataCell(Text('11')),
                              DataCell(Text('17')),
                            ]),
                            DataRow(cells: [
                              DataCell(Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/Atletico.png'),
                                    radius: 10,
                                  ),
                                  SizedBox(
                                    width: 0,
                                  ),
                                  Text('Atletico Madrid'),
                                ],
                              )),
                              DataCell(Text('14')),
                              DataCell(Text('8')),
                              DataCell(Text('5')),
                              DataCell(Text('1')),
                              DataCell(Text('21')),
                              DataCell(Text('8')),
                              DataCell(Text('13')),
                            ]),
                            DataRow(cells: [
                              DataCell(Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/villareal.png'),
                                    radius: 10,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text('Villareal'),
                                ],
                              )),
                              DataCell(Text('13')),
                              DataCell(Text('7')),
                              DataCell(Text('4')),
                              DataCell(Text('2')),
                              DataCell(Text('25')),
                              DataCell(Text('21')),
                              DataCell(Text('25')),
                            ]),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
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
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
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
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 250,
                        width: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 34, 34, 50),
                        ),
                        child: DataTable(
                            dividerThickness: 0.00001,
                            columnSpacing: 13,
                            headingTextStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                            dataTextStyle:
                                TextStyle(color: Colors.white, fontSize: 16),
                            columns: [
                              DataColumn(label: Text('Team')),
                              DataColumn(label: Text('MP')),
                              DataColumn(label: Text('w')),
                              DataColumn(label: Text('L')),
                              DataColumn(label: Text('D')),
                              DataColumn(label: Text('GF')),
                              DataColumn(label: Text('GA')),
                              DataColumn(label: Text('GD')),
                              DataColumn(label: Text('pts')),
                            ],
                            rows: [
                              DataRow(cells: [
                                DataCell(Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: AssetImage(
                                          'assets/nGfV05dipbAc7zzojivKew_64x64.png'),
                                      radius: 10,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('Liverpool'),
                                  ],
                                )),
                                DataCell(Text('12')),
                                DataCell(Text('10')),
                                DataCell(Text('1')),
                                DataCell(Text('1')),
                                DataCell(Text('24')),
                                DataCell(Text('8')),
                                DataCell(Text('16')),
                                DataCell(Text('31')),
                              ]),
                              DataRow(cells: [
                                DataCell(Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: AssetImage(
                                          'assets/z44l-a0W1v5FmgPnemV6Xw_64x64.png'),
                                      radius: 10,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('Man city'),
                                  ],
                                )),
                                DataCell(Text('12')),
                                DataCell(Text('7')),
                                DataCell(Text('2')),
                                DataCell(Text('3')),
                                DataCell(Text('22')),
                                DataCell(Text('17')),
                                DataCell(Text('5')),
                                DataCell(Text('23')),
                              ]),
                              DataRow(cells: [
                                DataCell(Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage:
                                          AssetImage('assets/Chelsea.png'),
                                      radius: 10,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('Chelsea'),
                                  ],
                                )),
                                DataCell(Text('12')),
                                DataCell(Text('6')),
                                DataCell(Text('4')),
                                DataCell(Text('2')),
                                DataCell(Text('23')),
                                DataCell(Text('14')),
                                DataCell(Text('9')),
                                DataCell(Text('22')),
                              ])
                            ]),
                      ),
                    ],
                  ),

                  Text(
                    'Basketball',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  Text(
                    '  Football  ',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  Text(
                    '  baseball  ',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  Text(
                    'Tennis',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  Text(
                    'Vollyball',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )
                ])),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
