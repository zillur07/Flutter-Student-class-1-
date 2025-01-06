import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          centerTitle: true,
          title: Text(
            'Home Page',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              color: Colors.red,
              height: 150,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(9.0),
                child: Row(
                  children: [
                    Container(
                      color: Colors.yellow,
                      height: 150,
                      width: 195,
                      child: Center(
                        child: Row(
                          children: [
                            Text('Aman'),
                            Text('018525222'),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.purple,
                      height: 150,
                      width: 195,
                      child: Center(child: Text('Vai')),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.green,
              height: 150,
              width: double.infinity,
              child: Center(
                child: Text(
                  'Jakir h',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              height: 150,
              width: double.infinity,
              color: Colors.teal,
              child: Center(
                child: Text(
                  'Sahadat h',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
