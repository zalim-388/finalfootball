import 'package:flutter/material.dart';

class StandingsDetail extends StatefulWidget {
  const StandingsDetail({super.key});

  @override
  State<StandingsDetail> createState() => _StandingsDetailState();
}

class _StandingsDetailState extends State<StandingsDetail> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          title: Align(
            alignment: Alignment.center,
            child: Text(
              '🇪🇸 Spain',
              style: TextStyle(color: Colors.white),
            ),
          )),
      body: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/1200px-LaLiga 4.png'),
            radius: 60,
          ),
          Text(
            'La Liga',
            style: TextStyle(
                color: Colors.white, fontSize: 35, fontWeight: FontWeight.w400),
          ),
          Container(
            height: 400,
            width: 400,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 34, 34, 50),
            ),
            
          )
        ],
      ),
    );
  }
}
