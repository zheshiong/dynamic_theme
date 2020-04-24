import 'package:dynamictheme/DynamicTheme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(ChangeNotifierProvider<DynamicTheme>(
    create: (_) => DynamicTheme(ThemeData.light()), child: MyApp()));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Provider.of<DynamicTheme>(context).getTheme(),
      home: MyHomePage('Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<DynamicTheme>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Theme 1"),
              onPressed: () {
                themeProvider.setTheme(DTheme.theme1);
              },
            ),
            RaisedButton(
              child: Text("Theme 2"),
              onPressed: () {
                themeProvider.setTheme(DTheme.theme2);
              },
            ),
            RaisedButton(
              child: Text("Theme 3"),
              onPressed: () {
                themeProvider.setTheme(DTheme.theme3);
              },
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
