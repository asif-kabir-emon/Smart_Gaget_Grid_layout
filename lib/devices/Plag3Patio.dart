import 'package:flutter/material.dart';

class Plag3Patio extends StatefulWidget {
  const Plag3Patio({Key? key}) : super(key: key);

  @override
  State<Plag3Patio> createState() => _Plag3PatioState();
}

class _Plag3PatioState extends State<Plag3Patio> {
  bool isButtonOn = false;
  Color stateColor = Colors.black54;
  String state = "OFF";
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        setState(() {
          if (isButtonOn) {
            isButtonOn = false;
            stateColor = Colors.black54;
            state = "OFF";
          } else {
            isButtonOn = true;
            stateColor = Colors.teal;
            state = "ON";
          }
        });
      },
      padding: EdgeInsets.zero,
      child: Card(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.power_rounded,
                    color: Colors.blue,
                  ),
                  Icon(Icons.power_settings_new),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 2, 0, 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "Plag 3 patio",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 2, 0, 15),
              child: Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: stateColor,
                    size: 10,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(state),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
