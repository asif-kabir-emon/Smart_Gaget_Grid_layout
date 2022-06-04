import 'package:flutter/material.dart';

class Bridge extends StatefulWidget {
  const Bridge({Key? key}) : super(key: key);

  @override
  State<Bridge> createState() => _BridgeState();
}

class _BridgeState extends State<Bridge> {
  bool isButtonOn = false;
  Color stateColor = Colors.black54;
  String state = "Off";
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        setState(() {
          if (isButtonOn) {
            isButtonOn = false;
            stateColor = Colors.black54;
            state = "Off";
          } else {
            isButtonOn = true;
            stateColor = Colors.teal;
            state = "On";
          }
          print("$isButtonOn");
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
                    Icons.ad_units,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 2, 0, 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "Bridge",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(10, 2, 10, 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Subdevice 3",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    DropdownButton(
                      items: null,
                      onChanged: null,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
