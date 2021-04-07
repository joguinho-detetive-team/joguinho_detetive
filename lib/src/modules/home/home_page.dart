import 'package:joguinho_detetive/src/utils/routes_names.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _titulo = 'GERALDÃO É LEGAL';
  int _counter = 0;

  void _incrementCounter() {
    setState(
      () => _counter++,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titulo),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
              onPressed: () =>
                  Navigator.pushNamed(context, RoutesNames.gamePage),
              child: Text('Game Page'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Adicionar',
        child: Icon(Icons.add),
      ),
    );
  }
}
