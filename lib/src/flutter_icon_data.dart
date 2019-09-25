import 'package:flutter/material.dart';

enum IconWeight { Regular, Solid, Brand }

class FlutterIconData extends IconData {
  const FlutterIconData(int codePoint, String fontFamily)
      : super(codePoint, fontFamily: fontFamily, fontPackage: "flutter_icons");

  const FlutterIconData.ionicons(int codePoint) : this(codePoint, "Ionicons");

  const FlutterIconData.antDesign(int codePoint) : this(codePoint, "AntDesign");

  const FlutterIconData.fontAwesome(int codePoint)
      : this(codePoint, "FontAwesome");

  const FlutterIconData.fontAwesome5(int codePoint,
      {IconWeight weight = IconWeight.Regular})
      : this(
          codePoint,
          weight == IconWeight.Brand
              ? "FontAwesome5_Brands"
              : weight == IconWeight.Solid
                  ? "FontAwesome5_Solid"
                  : "FontAwesome5",
        );

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

  const FlutterIconData.weatherIcons(int codePoint) : this(codePoint,"WeatherIcons");
}
