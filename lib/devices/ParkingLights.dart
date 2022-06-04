import 'package:flutter/material.dart';

class ParkingLights extends StatefulWidget {
  const ParkingLights({Key? key}) : super(key: key);

  @override
  State<ParkingLights> createState() => _ParkingLightsState();
}

class _ParkingLightsState extends State<ParkingLights> {
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
                    Icons.lightbulb,
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
                    "Parking Lights",
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
