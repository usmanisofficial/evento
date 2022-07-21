import 'package:eventapp/utils/route.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  int counter = 0;
  var splashText = {
    0: [
      'Get Premium Big Event Tickets',
      'All the best events from all world events'
    ],
    1: [
      'Get The Best Offer From Us',
      'All the best events from all world events'
    ],
    2: [
      'Evento  From Now On With Us',
      'All the best events from all world events'
    ]
  };
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: const Color.fromRGBO(66, 176, 255, 1),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
            width: MediaQuery.of(context).size.width,
            height: 350,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 70,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35, right: 35),
                  child: Text(
                    splashText[counter]![0],
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35, right: 35, top: 35),
                  child: Text(
                    splashText[counter]![1],
                    style: const TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 35, right: 35, top: 35),
                      child: SizedBox(
                        height: 50,
                        width: 200,
                        child: ElevatedButton(
                          onPressed: () {
                            if (counter < splashText.length-1) {
                              setState(() {
                                counter++;
                                // ignore: avoid_print
                                print(counter);
                              });
                            } else {
                              Navigator.pushNamed(context, MyRoutes.loginRoute);
                            }
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color.fromRGBO(66, 176, 255, 1)),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                          child: const Text(
                            "Next",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Container(
                        height: 11,
                        width: 11,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(66, 176, 255, 1),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 40),
                      child: Container(
                        height: 11,
                        width: 11,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(66, 176, 255, 1),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 40),
                      child: Container(
                        height: 11,
                        width: 30,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(66, 176, 255, 1),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
