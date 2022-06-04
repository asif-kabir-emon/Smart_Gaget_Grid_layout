import 'package:flutter/material.dart';

class TopBarWidget extends StatelessWidget {
  const TopBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 5, 0, 20),
      child: Container(
        color: Colors.white,
        height: 45.0,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Padding(
              padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: Center(
                child: Text(
                  'All',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: Center(
                child: Icon(
                  Icons.more_horiz,
                  color: Colors.black,
                  size: 24.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
