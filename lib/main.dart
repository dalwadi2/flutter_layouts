import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _state createState() => new _state();
}

class _state extends State<MyApp> {
  TextEditingController user = new TextEditingController();
  TextEditingController password = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('My Title'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Card(
                child: new Container(
                  padding: EdgeInsets.all(32.0),
                  child: new Column(
                    children: <Widget>[
                      new Text(
                        "Login",
                        style: new TextStyle(fontSize: 35.0),
                      ),
                      new Row(
                        children: <Widget>[
                          new Text('Username: '),
                          new Expanded(child: new TextField(controller: user))
                        ],
                      ),
                      new Row(
                        children: <Widget>[
                          new Text('Password: '),
                          new Expanded(
                              child: new TextField(
                            controller: password,
                            obscureText: true,
                          ))
                        ],
                      ),
                      new Padding(
                        padding: new EdgeInsets.all(12.0),
                        child: new RaisedButton(
                          onPressed: () => print('Logged in ${user.text}'),
                          child: new Text('Login'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              new Expanded(child: new Image.asset('images/image.jpg')),
              new Expanded(
                  child: new Image.network(
                      'https://i2.wp.com/beebom.com/wp-content/uploads/2016/01/Reverse-Image-Search-Engines-Apps-And-Its-Uses-2016.jpg?resize=640%2C426'))
            ],
          ),
        ),
      ),
    );
  }
}
