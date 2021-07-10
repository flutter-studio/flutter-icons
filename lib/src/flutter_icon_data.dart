import 'package:flutter/material.dart';

/// It is used to generate IconData under different icon sets
class FlutterIconData extends IconData {
  const FlutterIconData(int codePoint, String fontFamily)
      : super(codePoint, fontFamily: fontFamily, fontPackage: "flutter_icons");

  const FlutterIconData.ionicons(int codePoint) : this(codePoint, "Ionicons");

  const FlutterIconData.antDesign(int codePoint) : this(codePoint, "AntDesign");

  const FlutterIconData.fontAwesome(int codePoint)
      : this(codePoint, "FontAwesome");

  const FlutterIconData.fontAwesome5Brands(int codePoint)
      : this(codePoint, "FontAwesome5_Brands");

  const FlutterIconData.fontAwesome5(int codePoint)
      : this(codePoint, "FontAwesome5");

  const FlutterIconData.fontAwesome5Solid(int codePoint)
      : this(codePoint, "FontAwesome5_Solid");

  const FlutterIconData.entypo(int codePoint) : this(codePoint, "Entypo");

  const FlutterIconData.evilIcons(int codePoint) : this(codePoint, "EvilIcons");

  const FlutterIconData.feather(int codePoint) : this(codePoint, "Feather");

  const FlutterIconData.foundation(int codePoint)
      : this(codePoint, "Foundation");

  const FlutterIconData.materialCommunityIcons(int codePoint)
      : this(codePoint, "MaterialCommunityIcons");

  const FlutterIconData.materialIcons(int codePoint)
      : this(codePoint, "MaterialIcons");

  const FlutterIconData.octicons(int codePoint) : this(codePoint, "Octicons");

  const FlutterIconData.simpleLineIcons(int codePoint)
      : this(codePoint, "SimpleLineIcons");

  const FlutterIconData.zocial(int codePoint) : this(codePoint, "Zocial");

  const FlutterIconData.weatherIcons(int codePoint)
      : this(codePoint, "WeatherIcons");
}
