import 'package:flutter/material.dart';

class StatefulExample extends StatefulWidget {
  const StatefulExample({ Key? key }) : super(key: key);

  @override
  _StatefulExampleState createState() => _StatefulExampleState();
}

class _StatefulExampleState extends State<StatefulExample> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
          Text('Count: $count'),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              print('Button Pressed');
              setState(() {
                count++;
              });
            },
            child: const Text('Increment'),
          ),
        ],
        ),
    );
  }
}