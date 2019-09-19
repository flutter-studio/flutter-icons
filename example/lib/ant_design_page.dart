import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class AntDesignPage extends StatefulWidget {
  @override
  _AntDesignPageState createState() => _AntDesignPageState();
}

class _AntDesignPageState extends State<AntDesignPage> {
  String keyword = "";
  List<String> _keys;

  getIconData(String iconSetName, String iconName) {
    switch (iconSetName) {
      case "AntDesign":
        return AntDesign.getIconData(iconName);
      case "Entypo":
        return Entypo.getIconData(iconName);
      case "EvilIcons":
        return EvilIcons.getIconData(iconName);
      case "Feather":
        return Feather.getIconData(iconName);
      case "FontAwesome":
        return FontAwesome.getIconData(iconName);
      case "Foundation":
        return Foundation.getIconData(iconName);
      case "Ionicons":
        return Ionicons.getIconData(iconName);
      case "MaterialCommunityIcons":
        return MaterialCommunityIcons.getIconData(iconName);
      case "MaterialIcons":
        return MaterialIcons.getIconData(iconName);
      case "Octicons":
        return Octicons.getIconData(iconName);
      case "SimpleLineIcons":
        return SimpleLineIcons.getIconData(iconName);
      case "Zocial":
        return Zocial.getIconData(iconName);
      case "WeatherIcons":
        return WeatherIcons.getIconData(iconName);
    }
  }

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> args = ModalRoute.of(context).settings.arguments;
    Map<String, int> maps = args["glyphMaps"];
    String iconSetName = args["iconSetName"];
    _keys??=maps.keys.toList();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              onChanged: (value){
                keyword = value;
              },
              decoration: InputDecoration(
                hintText: "输入图标名称进行搜索",
                suffix: IconButton(
                  onPressed: (){
                    if(keyword!="") {
                      var _kkeys = maps.keys.toList();
                      _kkeys.retainWhere((str)=>str.contains(keyword));
                      setState(() {
                        _keys = _kkeys;
                      });
                    }
                  },
                  icon: Icon(Icons.search),
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (_,index){
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          getIconData(iconSetName, _keys.elementAt(index)),
                          size: 16,
                        ),
                        SizedBox(width: 10),
                        Text(_keys.elementAt(index))
                      ],
                    ),
                  );
                },
                separatorBuilder: (_,index)=>Container(
                  height: 1,
                  color: Colors.black.withOpacity(0.3),
                ),
                itemCount: _keys.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
