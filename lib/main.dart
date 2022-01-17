import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Quizz",
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> widz = [];
  List<String> qsn = [
    "It's the correct spelling of 'one'?",
    "It's the correct spelling of 'tow'?",
    "It's the correct spelling of 'three'?",
    "It's the correct spelling of 'foor'?",
  ];
  List<bool> ans = [true, false, true, false];
  int num = 0;
  bool t = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 5,
              child: Center(
                child: Text(
                  qsn[num],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    bool temp = ans[num];
                    setState(() {
                      if (num < 4 && t == false) {
                        widz.add(
                          Icon(
                            temp == true ? Icons.check : Icons.close,
                            color: temp == true ? Colors.green : Colors.red,
                          ),
                        );
                      }
                      if (num < 3) {
                        num++;
                      }
                      // else {
                      //   t = true;
                      // }
                    });
                  },
                  child: Text(
                    "True",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(25),
                    primary: Colors.green,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    bool temp = ans[num];
                    setState(() {
                      if (t == false && num == 3) {
                        t = true;
                        widz.add(
                          Icon(
                            temp == false ? Icons.check : Icons.close,
                            color: temp == false ? Colors.green : Colors.red,
                          ),
                        );
                      }
                      if (num < 3) {
                        num++;
                        widz.add(
                          Icon(
                            temp == false ? Icons.check : Icons.close,
                            color: temp == false ? Colors.green : Colors.red,
                          ),
                        );
                      }
                    });
                  },
                  child: Text(
                    "False",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(25),
                    primary: Colors.red,
                  ),
                ),
              ),
            ),
            Wrap(
              children: widz,
            ),
          ],
        ),
      ),
    );
  }
}
