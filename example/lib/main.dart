import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'ant_design_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Icons Explorer'),
      routes: {
        "icon_page":(_)=>AntDesignPage()
      },
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
  buildChildren() {
    Map<String, dynamic> map = {
      "AntDesign": AntDesign.glyphMaps,
      "Entypo": Entypo.glyphMaps,
      "EvilIcons": EvilIcons.glyphMaps,
      "Feather":  Feather.glyphMaps,
      "FontAwesome":FontAwesome.glyphMaps,
      "Foundation": Foundation.glyphMaps,
      "Ionicons": Ionicons.glyphMaps,
      "MaterialCommunityIcons": MaterialCommunityIcons.glyphMaps,
      "MaterialIcons": MaterialIcons.glyphMaps,
      "Octicons": Octicons.glyphMaps,
      "SimpleLineIcons": SimpleLineIcons.glyphMaps,
      "Zocial":Zocial.glyphMaps
    };
    List<Widget> widgets = [];
    for (int i = 0; i < map.keys.length; i++) {
      widgets.add(GestureDetector(
        onTap: (){
          Navigator.of(context).pushNamed("icon_page",arguments: {
            "glyphMaps":map[map.keys.elementAt(i)],
            "iconSetName":map.keys.elementAt(i)
          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(map.keys.elementAt(i)),
              Spacer(),
              Text(map[map.keys.elementAt(i)].length.toString()),
              Icon(Icons.arrow_forward_ios)
            ],
          ),
        ),
      ));
      if (i != map.keys.length - 1) {
        widgets.add(Container(
          height: 1,
          color: Colors.black.withOpacity(0.3),
        ));
      }
    }
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: buildChildren(),
        ),
      ),
    );
  }
}
