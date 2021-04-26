import 'package:bdd_app/counter_button.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  static const addButtonKey = Key('Increment');
  static const subtractButtonKey = Key('Decrement');
  static const alertButtonKey = Key("alert");
  static const closeButtonKey = Key("close_button");
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() => setState(() => _counter++);
  void _decrementCounter() => setState(() => _counter--);

  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Alert message!"),
          content: Text(
            "The result of the sum is " + _counter.toString(),
            key: ValueKey("alert_text"),
          ),
          actions: <Widget>[
            TextButton(
              child: Text("Close", key: MyHomePage.closeButtonKey),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text(widget.title), key: ValueKey('app_bar')),
        body: SafeArea(
          minimum: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headline1,
                  key: ValueKey("counterText"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CounterButton(
                      buttonKey: MyHomePage.addButtonKey,
                      text: 'Add',
                      icons: Icons.add,
                      onPressed: _incrementCounter,
                      backgroundColor: Colors.blue,
                    ),
                    SizedBox(width: 16.0),
                    CounterButton(
                      buttonKey: MyHomePage.subtractButtonKey,
                      text: 'Subtract',
                      icons: Icons.remove,
                      onPressed: _decrementCounter,
                      backgroundColor: Colors.red,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => _showDialog(),
          key: MyHomePage.alertButtonKey,
          child: Icon(Icons.add_alert),
        ),
      ),
    );
  }
}
