import 'package:finalfootball/screen2.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  bool? value = false;
  bool PasswordVisible = false;
  
 @override
void initState() {
  super.initState();
  PasswordVisible = true;
}


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 24, 24, 41),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 140),
                    child: Container(
                      height: 210,
                      width: 260,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: const Color.fromARGB(255, 34, 34, 50),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 25,
                  top: 100,
                  child: Container(
                    height: 250,
                    width: 230,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/photo2..png'),
                            fit: BoxFit.contain),
                        shape: BoxShape.rectangle),
                  ),
                ),
                Positioned(
                    left: 35,
                    top: 90,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 10,
                    )),
                Positioned(
                    left: 10,
                    top: 330,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 9,
                    )),
                Positioned(
                    left: 260,
                    top: 330,
                    child: CircleAvatar(
                      backgroundColor: Colors.blue.shade700,
                      radius: 15,
                    ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      'Dicover all\nabout sport',
                      style: TextStyle(color: Colors.white, fontSize: 55),
                    ),
                  ),
                  Text(
                    'search millions of job get the \ninside scoop on companies.\n Let’s get start it!',
                    style: TextStyle(color: Colors.grey.shade700, fontSize: 23),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120),
              child: Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return SingleChildScrollView(
                                child: Container(
                                  height: 700,
                                  width: 500,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20)),
                                    color:
                                        const Color.fromARGB(255, 34, 34, 50),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 189),
                                          child: Divider(
                                            thickness: 4,
                                          ),
                                        ),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              'Welcome',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 35,
                                                  fontWeight: FontWeight.w600),
                                            )),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 20),
                                          child: Container(
                                              width: 350,
                                              height: 90,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                color: const Color.fromARGB(
                                                    255, 24, 24, 41),
                                              ),alignment: Alignment.center,
                                              child: TextField(
                                                cursorColor: Colors.white,
                                                
                                                decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                    prefixIcon: Icon(
                                                      Icons.email_outlined,
                                                      color: Colors.grey,
                                                    ),
                                                    labelText: 'Email',
                                                    labelStyle: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 13)),
                                              )),
                                        ),
                                        Container(
                                          height: 90,
                                          width: 350,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: const Color.fromARGB(
                                                255, 24, 24, 41),
                                          ),alignment: Alignment.center,
                                          child: TextField(cursorColor: Colors.white,
                                            decoration: InputDecoration(
                                              fillColor:  const Color.fromARGB(
                                                255, 24, 24, 41),
                                              border: InputBorder.none,
                                             
                                              // hintText: 'Password',
                                              // hintStyle:
                                              //     TextStyle(color: Colors.grey),
                                              prefixIcon: Icon(
                                                  Icons.key_outlined,
                                                  color: Colors.grey),
                                              labelText: 'Password',
                                              labelStyle: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 13),
                                              suffixIcon: IconButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      PasswordVisible =
                                                          !PasswordVisible;
                                                    });
                                                  },
                                                  icon: Icon(
                                                    PasswordVisible
                                                        ? Icons
                                                            .visibility_outlined
                                                        : Icons
                                                            .visibility_off_outlined,
                                                    color: Colors.grey,
                                                  )),
                                              alignLabelWithHint: false,
                                              filled: true,
                                            ),
                                            keyboardType:
                                                TextInputType.visiblePassword,
                                            textInputAction:
                                                TextInputAction.done,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Checkbox(
                                              tristate: true,
                                              value: value,
                                              onChanged: (bool? newValue) {
                                                setState(() {
                                                  value = newValue;
                                                });
                                              },
                                            ),
                                            Text(
                                              'Remember me',
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 150),
                                              child: TextButton(
                                                  onPressed: () {},
                                                  child: Text(
                                                    'Forgot Password',
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  )),
                                            )
                                          ],
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      Screen2(),
                                                ));
                                          },
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(top: 50),
                                            child: Container(
                                              height: 80,
                                              width: 350,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  color: Colors.blue.shade700),
                                              alignment: Alignment.center,
                                              child: Text(
                                                'Sign in',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 19),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 120),
                                          child: Row(
                                            children: [
                                              Text(
                                                'Don’t have account?',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15),
                                              ),
                                              Text(
                                                'Sign up',
                                                style: TextStyle(
                                                    color: Colors.blue),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            });
                      },
                      child: Container(
                        height: 80,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.blue.shade700,
                            borderRadius: BorderRadius.circular(30)),
                        alignment: Alignment.center,
                        child: Text(
                          'Sign in',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Sign up',
                        style: TextStyle(color: Colors.white54, fontSize: 19),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
