import 'package:flutter/material.dart';
class FlutterIconData extends IconData {
  const FlutterIconData(int codePoint,String fontFamily)
      : super(
      codePoint,
      fontFamily:fontFamily,
      fontPackage: "flutter_icons"
  );

  const FlutterIconData.ionicons(int codePoint):this(codePoint,"Ionicons");

  const FlutterIconData.antDesign(int codePoint):this(codePoint,"AntDesign");
}
