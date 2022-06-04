import 'package:flutter/material.dart';
import 'devices/PlugAmmar.dart';
import 'devices/BilikHana.dart';
import 'devices/GateLightSwitch.dart';
import 'devices/Plag3Patio.dart';
import 'devices/ParkingLights.dart';
import 'devices/Bridge.dart';

class GridViewWidget extends StatefulWidget {
  const GridViewWidget({Key? key}) : super(key: key);

  @override
  State<GridViewWidget> createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<GridViewWidget> {
  @override
  Widget build(BuildContext context) {
    return GridView(
      // padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
        crossAxisCount: 2,
        childAspectRatio: 1.75,
      ),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: const [
        PlugAmmar(),
        BilikHana(),
        GateLightSwitch(),
        Plag3Patio(),
        ParkingLights(),
        Bridge(),
      ],
    );
  }
}
