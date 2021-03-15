import 'package:flutter/material.dart';
import 'package:simple_button/button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('These are the buttons :'),
            Button(
              child: Text('Apple'),
              onPress: () => print('Apple'),
            ),
            Button(
              child: Text('Banana'),
              onPress: () => print('Banana'),
              backgroundColor: Colors.transparent,
            ),
            Button(
              child: Text(
                'Cherry',
                style: TextStyle(color: Colors.blue),
              ),
              onPress: () => print('Cherry'),
              backgroundColor: Colors.transparent,
            ),
            Button(child: Text('Dragon'), onPress: () => print('Dragon'), elevation: 2.0),
            Button(
              child: Text('Dragon'),
              elevation: 2.0,
              margin: EdgeInsets.only(top: 8.0),
              padding: EdgeInsets.only(top: 8.0, left: 12.0, right: 12.0, bottom: 8.0),
              onPress: () => print('Dragon'),
              radius: 20,
            ),
            SizedBox(
              width: 200,
              child: Button(
                alignment: Alignment.center,
                child: Text('Dragon'),
                elevation: 2.0,
                margin: EdgeInsets.only(top: 8.0),
                padding: EdgeInsets.only(top: 8.0, left: 12.0, right: 12.0, bottom: 8.0),
                onPress: () => print('Dragon'),
                radius: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
