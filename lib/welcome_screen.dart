import 'package:eventapp/utils/route.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Center(
          child: InkWell(
            onTap: (() {
              Navigator.pushNamed(context, MyRoutes.splashOneRoute);
            }),
            child: Container(
              color: const Color.fromRGBO(66, 176, 255, 1),
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Welcome to Evento",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  Text("Best Event Booking App",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 248, 248, 248))),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
