import 'package:flutter/material.dart';
import 'dart:math';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    List ourStates = [
      'Alabama',
      'Alaska',
      'Arizona',
      'Arkansas',
      'California',
      'Colorado',
      'Connecticut',
      'Delaware',
      'Florida',
      'Georgia',
      'Hawaii',
      'Idaho',
      'Illinois',
      'Indiana',
      'Iowa',
      'Kansas',
      'Kentucky',
      'Louisiana',
      'Maine',
      'Maryland',
      'Massachusetts',
      'Michigan',
      'Minnesota',
      'Mississippi',
      'Missouri',
      'Montana',
      'Nebraska',
      'Nevada',
      'New Hampshire',
      'New Jersey',
      'New Mexico',
      'New York',
      'North Carolina',
      'North Dakota',
      'Ohio',
      'Oklahoma',
      'Oregon',
      'Pennsylvania',
      'Rhode Island',
      'South Carolina',
      'South Dakota',
      'Tennessee',
      'Texas',
      'Utah',
      'Vermont',
      'Virginia',
      'Washington',
      'West Virginia',
      'Wisconsin',
      'Wyoming'
    ];
    String stateName;
    var rng = Random();

    stateName = ourStates[rng.nextInt(ourStates.length)];
    var answer = stateName;
    ourStates.shuffle();

    String button2 = ourStates[rng.nextInt(ourStates.length)];
    String button3 = ourStates[rng.nextInt(ourStates.length)];
    List newButtons = [answer, button2, button3];
    List newButtonsSC = newButtons.toList();

    newButtons.shuffle();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     setState(() {});
        //   },
        //   tooltip: 'Next',
        //   child: const Icon(Icons.add),
        // ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.yellow,
          child: Container(height: 50.0),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        appBar: AppBar(
          title: const Text('Name The State Game'),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset('assets/images/states_no_name/$answer.png',
                    height: 200),
                const Text(
                  'Name this State!',
                  style: TextStyle(fontSize: 20.0),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (answer == newButtons[0]) {
                      Navigator.of(context)
                          .pushNamed('/correct', arguments: newButtonsSC);

                      // statement(s) will execute if the Boolean expression is true.
                    } else {
                      Navigator.of(context).pushNamed('/wrong');
                      // statement(s) will execute if the Boolean expression is false.
                    }
                  },
                  child: Text(newButtons[0]),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (answer == newButtons[1]) {
                      Navigator.of(context)
                          .pushNamed('/correct', arguments: newButtonsSC);
                      // statement(s) will execute if the Boolean expression is true.
                    } else {
                      Navigator.of(context).pushNamed('/wrong');
                      // statement(s) will execute if the Boolean expression is false.
                    }
                  },
                  child: Text(newButtons[1]),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (answer == newButtons[2]) {
                      Navigator.of(context)
                          .pushNamed('/correct', arguments: newButtonsSC);
                      // statement(s) will execute if the Boolean expression is true.
                    } else {
                      Navigator.of(context).pushNamed('/wrong');
                      // statement(s) will execute if the Boolean expression is false.
                    }
                  },
                  child: Text(newButtons[2]),
                ),
              ]),
        ),
      ),
    );
  }
}