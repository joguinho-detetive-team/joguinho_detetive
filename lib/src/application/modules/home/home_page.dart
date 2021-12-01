import 'package:flutter/material.dart';
import 'package:joguinho_detetive/src/application/routes/routes_names.dart';
import 'package:nuvigator/next.dart';

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
    final nuvigator = Nuvigator.of(context);

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
              onPressed: () => nuvigator.open(RoutesNames.gamePage),
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
