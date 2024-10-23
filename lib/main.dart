import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TUGAS SESI3',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Switch Color'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Color> boxColors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow
  ];
  List<Color> textColors = [
    Colors.white,
    Colors.black,
    Colors.white,
    Colors.black
  ];
  List<String> letters = ['A', 'B', 'C', 'D'];

  void switchColor(int index) {
    setState(() {
      Color tempColor = boxColors[index];
      boxColors[index] = textColors[index];
      textColors[index] = tempColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    var lebar = (MediaQuery.of(context).size.width - 16) / 2;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        padding: const EdgeInsets.all(2),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () => switchColor(0),
                  child: Container(
                    color: boxColors[0],
                    width: lebar,
                    height: lebar,
                    child: Center(
                      child: Text(
                        letters[0],
                        style: TextStyle(
                          fontSize: 100,
                          color: textColors[0],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => switchColor(1),
                  child: Container(
                    color: boxColors[1],
                    width: lebar,
                    height: lebar,
                    child: Center(
                      child: Text(
                        letters[1],
                        style: TextStyle(
                          fontSize: 100,
                          color: textColors[1],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () => switchColor(2),
                  child: Container(
                    color: boxColors[2],
                    width: lebar,
                    height: lebar,
                    child: Center(
                      child: Text(
                        letters[2],
                        style: TextStyle(
                          fontSize: 100,
                          color: textColors[2],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => switchColor(3),
                  child: Container(
                    color: boxColors[3],
                    width: lebar,
                    height: lebar,
                    child: Center(
                      child: Text(
                        letters[3],
                        style: TextStyle(
                          fontSize: 100,
                          color: textColors[3],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
