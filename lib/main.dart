import 'package:flutter/material.dart';

void main() {
  const App app = App();
  runApp(app);
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {"/main_screen": (context) => MainScreen()},
      initialRoute: "/main_screen",
    );
  }
}

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  //создаем лист с виджетами
  final List<Widget> _listWidget = [
    Widget1(),
    Widget2(),
    Widget3(),
  ];
//индекс виджетов в листе
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                  //меняет текущий индекс виджета
                  onPressed: () {
                    setState(() {
                      _index = 0;
                    });
                  },
                  child: Center(
                    child: Text("tab1"),
                  )),
              TextButton(
                  onPressed: () {
                    //меняет текущий индекс виджета
                    setState(() {
                      _index = 1;
                    });
                  },
                  child: Center(
                    child: Text("tab2"),
                  )),
              TextButton(
                  onPressed: () {
                    //меняет текущий индекс виджета
                    setState(() {
                      _index = 2;
                    });
                  },
                  child: Center(
                    child: Text("tab3"),
                  )),
            ],
          ),
          //показывает виджет из листа с указанием индекса
          Expanded(child: _listWidget[_index])
        ],
      ),
    );
  }
}

class Widget1 extends StatelessWidget {
  const Widget1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 100,
        height: 100,
        color: Colors.red,
      ),
    );
  }
}

class Widget2 extends StatelessWidget {
  const Widget2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 100,
        height: 100,
        color: Colors.green,
      ),
    );
  }
}

class Widget3 extends StatelessWidget {
  const Widget3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 100,
        height: 100,
        color: Colors.blue,
      ),
    );
  }
}
