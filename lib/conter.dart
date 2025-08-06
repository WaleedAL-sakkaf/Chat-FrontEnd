import 'package:flutter/material.dart';

class Conter extends StatefulWidget {
  @override
  State<Conter> createState() => _ConterState();
}

class _ConterState extends State<Conter> {
  int count = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter '),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                // set state for reBulid   the widge of Bulid
                setState(() {
                  count--;
                  print(count);
                });
              },
              child: const Text('Down'),
            ),
            SizedBox(
              width: 40,
            ),
            Text(
              '$count',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 40,
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  count++;
                  print(count);
                });
              },
              child: const Text('UPP'),
            ),
          ],
        ),
      ),
    );
  }
}
