import 'package:flutter/material.dart';
import 'dart:math';

class content extends StatefulWidget {
  const content({super.key});

  @override
  State<content> createState() => _contentState();
}

class _contentState extends State<content> {
  @override
  Widget build(BuildContext context) {
    int click = Random().nextInt(5) + 1;
    void set() {
      setState(() {
        click = Random().nextInt(5) + 1;
      });
    }

    return Column(
      children: <Widget>[
        Center(
          child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: TextButton(
                    child: Image.asset('images/r$click.jpg',
                        height: 150, fit: BoxFit.fill),
                    onPressed: () {
                      set();
                    },
                  ),
                ),
                Expanded(
                  child: TextButton(
                    child: Text('Selectable text'),
                    onPressed: () {
                      set();
                    },
                  ),
                ),
              ]),
        ),
        SizedBox(height: 30),
        Center(
          child: Row(

              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: TextButton(
                    child: Image.asset('images/r$click.jpg',
                        height: 150, fit: BoxFit.fill),
                    onPressed: () {
                      set();
                    },
                  ),
                ),
                Expanded(
                  child: TextButton(
                    child: Text('Selectable text'),
                    onPressed: () {
                      set();
                    },
                  ),
                ),
              ]),
        ),
      ],
    );
  }
}
