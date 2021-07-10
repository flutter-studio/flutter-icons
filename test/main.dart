import 'dart:io';

main(List<String> args) {
  Directory directory = Directory("../lib/src");
  File flutterIconFile = File('../lib/src/flutter_icons.dart');
  List<File> files = directory.listSync().map((e)=>File(e.path)).toList();
  String str = '''
import 'package:flutter/material.dart';
import 'flutter_icon_data.dart';
class FlutterIcons {
  FlutterIcons._();
  ''';
  for(var i=0;i<files.length;i++){
    final File file = files[i];
    if(!file.path.contains("flutter_icon") && !file.path.contains("icon_toggle")){
      final  List<String> lines = file.readAsLinesSync();
      for(var k=0;k<lines.length;k++){
        final String line = lines[k];
        if(line.contains('static const')){
          print(file.path);
        var suffix = getSimple(line);
        List lineList = line.split(" ");
        lineList[5] = lineList[5]+'_$suffix';
        String temp = lineList.join(" ");
        str += '\n';
        str += temp;
        }
        
      }
    }

  }
  str += '}';
  flutterIconFile.writeAsStringSync(str);
  // directory.list().forEach((file)=>print(file.path));
}
String getSimple(String line){
  print(line);
  var name1 = line.split(".")[1];
  var name = name1.split("(")[0];
  if(name == 'materialCommunityIcons') return 'mco';
  if(name == 'materialIcons') return 'mdi';
  if(name == 'simpleLineIcons') return 'sli';
  if(name == 'fontAwesome') return 'faw';
  if(name == 'fontAwesome5') return 'faw5';
  if(name == 'fontAwesome5Solid') return 'faw5s';
  if(name == 'fontAwesome5Brands') return 'faw5d';
  return name.substring(0,3).toLowerCase();
}
enum IconLib {
  ///All Icons
  all,

  ///Ant Design Icons
  ant,

  ///Entypo Icons
  ent,

  ///Evil Icons
  evi,

  ///Feather Icons
  fea,

  ///Font Awesome Icons
  faw,

  ///Foundation Icons
  fou,

  ///Ionicons Icons
  ion,

  ///Material Community Icons
  mco,

  ///Material Icons
  mdi,

  ///Octicons Icons
  oct,

  ///Simple Line Icons
  sli,

  ///Zocial Icons
  zoc,

  ///Weather Icons
  wea
}
