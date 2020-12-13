import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class how_To_Use extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anti Theft Motion Detector',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black38,
          toolbarHeight: 70.0,
          title: Center(
            child: Text(
              'Guide For Anti Theft Sensor',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              SafeArea(
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/temp.jpg"),
                          fit: BoxFit.cover)),
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          'How To Use',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Initial steps',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: '1.',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17.0,
                              ),
                            ),
                            TextSpan(
                                text:
                                    ' Connect a power source using a 9V battery/USB cable . The '),
                            TextSpan(
                                text: 'YELLOW LED',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.yellow)),
                            TextSpan(
                              text:
                                  '  should turn on indicating that the system in on.',
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 0.5,
                        indent: 170.0,
                        endIndent: 170.0,
                        color: Colors.black,
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: '2.',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17.0,
                              ),
                            ),
                            TextSpan(
                              text:
                                  '	Enter a password using the keypad membrane switch and press the',
                            ),
                            TextSpan(
                              text: ' START',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: ' button. The default password is ',
                            ),
                            TextSpan(
                              text: '1234 ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: '. It can be changed later. The ',
                            ),
                            TextSpan(
                              text: 'STOP ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text:
                                  ' button is used to reset the password if it has been wrongly entered.',
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 0.5,
                        indent: 170.0,
                        endIndent: 170.0,
                        color: Colors.black,
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: '3.',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17.0,
                              ),
                            ),
                            TextSpan(
                                text: 'When the password is entered, the '),
                            TextSpan(
                                text: 'GREEN LED',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green)),
                            TextSpan(
                              text:
                                  ' will start blinking for the duration of the access time. The' ,
                            ),
                            TextSpan(
                              text: ' RED LED',
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: ' will be in countdown state after that after which the alarm will ring.  During this time, the PIR motion sensor shall not be activated. '
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 0.5,
                        indent: 170.0,
                        endIndent: 170.0,
                        color: Colors.black,
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: '4.',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17.0,
                              ),
                            ),
                            TextSpan(
                                text:
                                    'Post the access time, the PIR motion sensor will be activated and it will detect any change in infrared radiation in front of the sensor, thereby detecting motion. '),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 0.5,
                        indent: 170.0,
                        endIndent: 170.0,
                        color: Colors.black,
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: '5.',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17.0,
                              ),
                            ),
                            TextSpan(
                                text:
                                    'If system detects motion after the access time is complete, then the '),
                            TextSpan(
                              text: 'RED LED',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red),
                            ),
                            TextSpan(
                              text:
                                  ' will flicker indicating the alarm and the buzzer will start ringing. ',
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 0.5,
                        indent: 170.0,
                        endIndent: 170.0,
                        color: Colors.black,
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: '6.',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17.0,
                              ),
                            ),
                            TextSpan(
                                text:
                                    'To turn off the buzzer, enter the password again, to stop the buzzer. The system automatically resets itself and the password has to be entered again to access the system. '),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 0.5,
                        indent: 170.0,
                        endIndent: 170.0,
                        color: Colors.black,
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: '7.',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17.0,
                              ),
                            ),
                            TextSpan(
                                text:
                                'Repeat steps 2-6 for further demonstrations. '),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1.5,
                        color: Colors.black,
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'ACCESS TIME - ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                              ),
                            ),
                            TextSpan(
                                text:
                                'Time duration for which system has free access/motion sensor is disabled i.e. GREEN led is blinking.'),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 1.5,
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'COUNTDOWN TIME - ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                              ),
                            ),
                            TextSpan(
                                text:
                                'Time duration for which system has initiated countdown for the alarm to ring , i.e ,'),
                            TextSpan(
                              text: ' RED LED ',
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight:FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text : 'is blinking.',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
