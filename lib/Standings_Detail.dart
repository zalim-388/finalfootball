import 'package:flutter/material.dart';

class StandingsDetail extends StatefulWidget {
  const StandingsDetail({super.key});

  @override
  State<StandingsDetail> createState() => _StandingsDetailState();
}

class _StandingsDetailState extends State<StandingsDetail> {
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
                Icons.arrow_back_ios_outlined,
                color: Colors.white,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Text(
                '🇪🇸 Spain',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(children: [
              CircleAvatar(
                backgroundImage:
                    AssetImage('assets/U4pM4toWEW0Sr9NIhY_Lyw_64x64.png'),
                radius: 60,
              ),
              Text(
                'La Liga',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.w400),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 24, 24, 41),
                  ),
                  child: TabBar(
                      dividerColor: Colors.transparent,
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(colors: [
                          const Color.fromARGB(255, 244, 165, 138),
                          const Color.fromARGB(255, 237, 107, 78)
                        ]),
                      ),
                      tabs: [
                        Tab(
                          child: Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'All',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Tab(
                          child: Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Home',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                              )
                            ],
                          ),
                        ),
                        Tab(
                          child: Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Away',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                ),
              ),
              Expanded(
                  child: TabBarView(children: [
                // Center(
                //   child: Text(
                //     'All',
                //     style: TextStyle(color: Colors.white, fontSize: 16),
                //   ),
                // ),
                Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        border: TableBorder.all(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        dividerThickness: 0.00000000000001,
                        columnSpacing: 25,
                        //               dataRowColor: WidgetStateColor.resolveWith((states)=>const Color.fromARGB(255, 20, 39, 77),
                        // ),

                        headingTextStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                        dataTextStyle:
                            TextStyle(color: Colors.white, fontSize: 16),
                        columns: [
                          DataColumn(label: Text('Club')),
                          DataColumn(label: Text('p')),
                          DataColumn(label: Text('w')),
                          DataColumn(label: Text('L')),
                          DataColumn(label: Text('D')),
                          DataColumn(label: Text('GF')),
                          DataColumn(label: Text('GA')),
                          DataColumn(label: Text('GD')),
                          DataColumn(label: Text('pts')),
                        ],
                        rows: [
                          DataRow(
                              color: WidgetStateColor.resolveWith(
                                (states) =>
                                    const Color.fromARGB(255, 20, 39, 77),
                              ),
                              cells: [
                                DataCell(Row(
                                  children: [
                                    Text('1'),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    CircleAvatar(
                                      backgroundImage:
                                          AssetImage('assets/barcelona.png'),
                                      radius: 10,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('barcelona'),
                                  ],
                                )),
                                DataCell(Text('14')),
                                DataCell(Text('11')),
                                DataCell(Text('1')),
                                DataCell(Text('2')),
                                DataCell(Text('42')),
                                DataCell(Text('14')),
                                DataCell(Text('28')),
                                DataCell(Text('34')),
                              ]),
                          DataRow(
                              color: WidgetStateColor.resolveWith(
                                (stats) => const Color.fromARGB(
                                  255,
                                  20,
                                  39,
                                  77,
                                ),
                              ),
                              cells: [
                                DataCell(Row(
                                  children: [
                                    Text('2'),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    CircleAvatar(
                                      backgroundImage:
                                          AssetImage('assets/realmadrid.png'),
                                      radius: 10,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('real madrid'),
                                  ],
                                )),
                                DataCell(Text('13')),
                                DataCell(Text('9')),
                                DataCell(Text('3')),
                                DataCell(Text('1')),
                                DataCell(Text('28')),
                                DataCell(Text('11')),
                                DataCell(Text('17')),
                                DataCell(Text('30')),
                              ]),
                          DataRow(
                              color: WidgetStateColor.resolveWith((stats) =>
                                  const Color.fromARGB(255, 20, 39, 77)),
                              cells: [
                                DataCell(Row(
                                  children: [
                                    Text('3'),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    CircleAvatar(
                                      backgroundImage:
                                          AssetImage('assets/Atletico.png'),
                                      radius: 10,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('Atletico madrid'),
                                  ],
                                )),
                                DataCell(Text('14')),
                                DataCell(Text('8')),
                                DataCell(Text('5')),
                                DataCell(Text('1')),
                                DataCell(Text('21')),
                                DataCell(Text('8')),
                                DataCell(Text('13')),
                                DataCell(Text('29')),
                              ]),
                          DataRow(
                              color: WidgetStateColor.resolveWith((sstats) =>
                                  const Color.fromARGB(255, 68, 24, 24)),
                              cells: [
                                DataCell(Row(
                                  children: [
                                    Text('4'),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    CircleAvatar(
                                      backgroundImage:
                                          AssetImage('assets/villareal.png'),
                                      radius: 10,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('villareal'),
                                  ],
                                )),
                                DataCell(Text('13')),
                                DataCell(Text('7')),
                                DataCell(Text('4')),
                                DataCell(Text('2')),
                                DataCell(Text('25')),
                                DataCell(Text('21')),
                                DataCell(Text('4')),
                                DataCell(Text('25')),
                              ]),
                          DataRow(
                              color: WidgetStateColor.resolveWith((stats) =>
                                  const Color.fromARGB(255, 68, 24, 24)),
                              cells: [
                                DataCell(Row(
                                  children: [
                                    Text('5'),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    CircleAvatar(
                                      backgroundImage:
                                          AssetImage('assets/Athletic.png'),
                                      radius: 10,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('Athletic'),
                                  ],
                                )),
                                DataCell(Text('14')),
                                DataCell(Text('6')),
                                DataCell(Text('5')),
                                DataCell(Text('3')),
                                DataCell(Text('20')),
                                DataCell(Text('13')),
                                DataCell(Text('7')),
                                DataCell(Text('23')),
                              ]),
                          DataRow(cells: [
                            DataCell(Row(
                              children: [
                                Text('6'),
                                SizedBox(
                                  width: 5,
                                ),
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/Osasuna.png'),
                                  radius: 10,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('osasuna'),
                              ],
                            )),
                            DataCell(Text('14')),
                            DataCell(Text('6')),
                            DataCell(Text('4')),
                            DataCell(Text('4')),
                            DataCell(Text('19')),
                            DataCell(Text('33')),
                            DataCell(Text('-3')),
                            DataCell(Text('22')),
                          ]),
                          DataRow(cells: [
                            DataCell(Row(
                              children: [
                                Text('7'),
                                SizedBox(
                                  width: 5,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/Girona FC.png'),
                                  radius: 10,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('Girona'),
                              ],
                            )),
                            DataCell(Text('14')),
                            DataCell(Text('6')),
                            DataCell(Text('3')),
                            DataCell(Text('5')),
                            DataCell(Text('20')),
                            DataCell(Text('18')),
                            DataCell(Text('2')),
                            DataCell(Text('21')),
                          ]),
                          DataRow(cells: [
                            DataCell(Row(
                              children: [
                                Text('8'),
                                SizedBox(
                                  width: 5,
                                ),
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/Mallorca.png'),
                                  radius: 10,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('Mallorca'),
                              ],
                            )),
                            DataCell(Text('14')),
                            DataCell(Text('6')),
                            DataCell(Text('3')),
                            DataCell(Text('5')),
                            DataCell(Text('13')),
                            DataCell(Text('12')),
                            DataCell(Text('1')),
                            DataCell(Text('21')),
                          ]),
                          DataRow(cells: [
                            DataCell(Row(
                              children: [
                                Text('9'),
                                SizedBox(
                                  width: 5,
                                ),
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/Real Betis.png'),
                                  radius: 10,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('Real betis'),
                              ],
                            )),
                            DataCell(Text('14')),
                            DataCell(Text('5')),
                            DataCell(Text('5')),
                            DataCell(Text('4')),
                            DataCell(Text('16')),
                            DataCell(Text('16')),
                            DataCell(Text('0')),
                            DataCell(Text('20')),
                          ]),
                          DataRow(cells: [
                            DataCell(Row(
                              children: [
                                Text('9'),
                                SizedBox(
                                  width: 5,
                                ),
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/Real Betis.png'),
                                  radius: 10,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('Real betis'),
                              ],
                            )),
                            DataCell(Text('14')),
                            DataCell(Text('5')),
                            DataCell(Text('5')),
                            DataCell(Text('4')),
                            DataCell(Text('16')),
                            DataCell(Text('16')),
                            DataCell(Text('0')),
                            DataCell(Text('20')),
                          ]),
                        ],
                      ),
                    ),
                  ],
                ),

                Center(
                  child: Text(
                    'Home',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                Center(
                  child: Text(
                    'Away',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                )
              ])),
            ]),
          ),
        ));
  }
}
