import 'package:flutter/material.dart';

class ExamplePage extends StatefulWidget {
  const ExamplePage({super.key});

  @override
  State<ExamplePage> createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  // bool _isChecked = false;
  bool _isOk = false;
  var number = 0;
  var tobji = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Statefullwidget Example'),
      ),
      body: Column(
        children: [
          Center(
            child: Checkbox(
              value: _isOk,
              onChanged: (bool? newV) {
                setState(() {
                  _isOk = newV ?? false;
                });
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            '$number',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      number++;
                    });
                  },
                  child: Text('add')),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      number--;
                    });
                  },
                  child: Text('sub'))
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            '$tobji',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    tobji++;
                  });
                },
                icon: Icon(Icons.add),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    tobji--;
                  });
                },
                icon: Icon(Icons.accessibility_sharp),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
