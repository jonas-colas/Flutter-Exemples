import 'package:flutter/material.dart';
import 'package:flutter_examples/src/pages/alert_page.dart';
import 'package:flutter_examples/src/pages/avatar_page.dart';
import 'package:flutter_examples/src/pages/card_page.dart';
import 'package:flutter_examples/src/pages/home.dart';
// import 'package:flutter_examples/src/pages/home_temp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componenentes App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      debugShowCheckedModeBanner: false,
      // home: Home(),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => Home(),
        'alert': (BuildContext context) => AlertPage(),
        'avatar': (BuildContext context) => AvatarPage(),
        'card': (BuildContext context) => CardPage(),
      },
      onGenerateRoute: (RouteSettings settings) {
        print('ruta llamada ${settings.name}');
        return null;
      },
    );
  }
}
