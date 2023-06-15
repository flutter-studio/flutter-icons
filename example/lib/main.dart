import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: 'Flutter Icons'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(AntDesign.stepforward),
            Icon(Ionicons.ios_search),
            Icon(FontAwesome.glass),
            Icon(MaterialIcons.ac_unit),
            Icon(FontAwesome5.address_book),
            Icon(FontAwesome5Solid.address_book),
            Icon(FontAwesome5Brands.$500px),
            Icon(FlutterIcons.$500px_ent),
            Icon(FlutterIcons.$500px_faw5d),
            Icon(WeatherIcons.wi_alien),
            Icon(WeatherIcons.wi_cloud),
            Icon(WeatherIcons.wi_day_rain)
          ],
        ),
      ),
    );
  }
}
