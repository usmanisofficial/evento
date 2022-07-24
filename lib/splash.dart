import 'package:eventapp/utils/route.dart';
import 'package:eventapp/widgets/splash_dots.dart';
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
      'All the best events from all world events',
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
  var size = {
    0: [30, 11, 11],
    1: [11, 30, 11],
    2: [11, 11, 30]
  };
  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color.fromRGBO(66, 176, 255, 1),
      child: SafeArea(
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
                Heading(heading: splashText[counter]![0]),
                SubTitle(subTitle: splashText[counter]![1]),
                Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 35, right: 25, top: 35),
                      child: SizedBox(
                        height: 50,
                        width: 200,
                        child: ElevatedButton(
                          onPressed: () {
                            if (counter < splashText.length - 1) {
                              setState(() {
                                counter++;
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
                    Dot(lengthofDot: size[counter]![0]),
                    Dot(lengthofDot: size[counter]![1]),
                    Dot(lengthofDot: size[counter]![2]),
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

class Heading extends StatelessWidget {
  final String heading;
  const Heading({Key? key, required this.heading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 35, right: 35),
      child: Text(
        heading,
        style: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class SubTitle extends StatelessWidget {
  final String subTitle;
  const SubTitle({Key? key, required this.subTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 35, right: 35, top: 35),
      child: Text(
        subTitle,
        style: const TextStyle(fontSize: 14, color: Colors.grey),
      ),
    );
  }
}
