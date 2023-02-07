import 'package:flutter/material.dart';
import 'dart:math';

class content extends StatefulWidget {
  const content({super.key});

  @override
  State<content> createState() => _contentState();
}

const _mydummy = [
  "When you have a dream, you've got to grab it and never let go.",
  "Nothing is impossible. The word itself says 'I'm possible!'",
  "There is nothing impossible to they who will try",
  "The bad news is time flies. The good news is you're the pilot.",
  "Life has got all those twists and turns. You've got to hold on tight and off you go.",
  "Be courageous. Challenge orthodoxy. Stand up for what you believe in. When you are in your rocking chair talking to your grandchildren many years from now, be sure you have a good story to tell.",
  "You make a choice: continue living your life feeling muddled in this abyss of self-misunderstanding, or you find your identity independent of it. You draw your own box."
];

// define a varaiable with type of int
int clk = Random().nextInt(6) + 1;
// using the index of mydummy

class _contentState extends State<content> {
  @override
  Widget build(BuildContext context) {
    int click = Random().nextInt(5) + 1;
    int clk = Random().nextInt(6) + 1;

    void set() {
      setState(() {
        click = Random().nextInt(5) + 1;
      });
    }

    var firstQuote = _mydummy[clk];
    void qt() {
      setState(() {
        firstQuote = _mydummy[clk];
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
                    child: Image.asset('assets/images/r$click.jpg',
                        height: 150, fit: BoxFit.fill),
                    onPressed: () {
                      set();
                    },
                  ),
                ),
                Expanded(
                  child: TextButton(
                    child: Text(firstQuote),
                    onPressed: () {
                      qt();
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
                    child: Image.asset('assets/images/r$click.jpg',
                        height: 150, fit: BoxFit.fill),
                    onPressed: () {
                      set();
                    },
                  ),
                ),
                Expanded(
                  child: TextButton(
                    child: Text(firstQuote),
                    onPressed: () {
                      qt();
                    },
                  ),
                ),
              ]),
        ),
        SizedBox(height: 30),
        TextButton(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
            backgroundColor: MaterialStatePropertyAll<Color>(Colors.black),
          ),
          onPressed: () {
            qt();
          },
          child: Text("Click Here"),
        ),
        SizedBox(height: 50),
      ],
    );
  }
}
