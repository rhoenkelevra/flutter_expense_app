import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  const Chart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // Chart
      // card gets the size of the child
      child: Container(
        // use the container props as child to change the card size
        // width: double.infinity,
        color: Colors.blue,
        child: Text(
          'Chart',
        ),
      ),
    );
  }
}
