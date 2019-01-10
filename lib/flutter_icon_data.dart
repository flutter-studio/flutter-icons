import 'package:flutter/material.dart';
class FlutterIconData extends IconData {
  const FlutterIconData(int codePoint,String fontFamily)
      : super(
      codePoint,
      fontFamily:fontFamily,
      fontPackage: "flutter_icons"
  );
  const FlutterIconData.ionicons(int codePoint):super(codePoint,fontFamily: "Ionicons",fontPackage: "flutter_icons");
}
