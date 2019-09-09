English | [简体中文](./README_zh-CN.md)

# flutter_icons

[![pub package](https://img.shields.io/pub/v/flutter_icons.svg)](https://pub.dartlang.org/packages/flutter_icons)

Customizable Icons for Flutter,Inspired by [react-native-vector-icons](https://github.com/oblador/react-native-vector-icons)

## Bundled Icon Sets

[Browse all](https://oblador.github.io/react-native-vector-icons/).

* [`AntDesign`](https://ant.design/) by AntFinance (**297** icons)
* [`Entypo`](http://entypo.com) by Daniel Bruce (**411** icons) 
* [`EvilIcons`](http://evil-icons.io) by Alexander Madyankin & Roman Shamin (v1.10.1, **70** icons) 
* [`Feather`](http://feathericons.com) by Cole Bemis & Contributors (v4.7.0, **266** icons) 
* [`FontAwesome`](http://fortawesome.github.io/Font-Awesome/icons/) by Dave Gandy (v4.7.0, **675** icons)
* [`FontAwesome 5`](https://fontawesome.com) by Fonticons, Inc. (v5.7.0, **1500** (free))
* [`Foundation`](http://zurb.com/playground/foundation-icon-fonts-3) by ZURB, Inc. (v3.0, **283** icons)
* [`Ionicons`](https://ionicons.com/) by Ben Sperry (v4.2.4, **696** icons)
* [`MaterialIcons`](https://www.google.com/design/icons/) by Google, Inc. (v3.0.1, **932** icons)
* [`MaterialCommunityIcons`](https://materialdesignicons.com/) by MaterialDesignIcons.com  (v4.0.96, **4416** icons)
* [`Octicons`](http://octicons.github.com) by Github, Inc. (v8.0.0, **177** icons)
* [`Zocial`](http://zocial.smcllns.com/) by Sam Collins (v1.0, **100** icons)
* [`SimpleLineIcons`](https://simplelineicons.github.io/) by Sabbir & Contributors (v2.4.1, **189** icons)

## Usage
To use this plugin, add `flutter_icons` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).

## Widget

### IconToggle

| Prop                 | Description                                                                                                                                                                               |
| -------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| selectedIconData  | Icon is displayed when value is true |
| unselectedIconData | Icon is displayed when value is false |
| activeColor | When value is true, the icon color is displayed |
| inactiveColor | When value is false, the icon color is displayed |
| value| Whether this IconToggle is selected. |
| onChanged | Called when the value of the IconToggle should change. |
| duration| The duration of the transition from selected Icon to unselected Icon |
| reverseDuration | he duration of the transition from unselected Icon to selected Icon |
| transitionBuilder | Transition animation function between the selected Icon and the unselected Icon |



## Static Methods

| Prop                 | Description                                                                                                                                                                               |
| -------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **`getIconData`**  | Returns the IconData object,eg : ```IconData iconData = AntDesign.getIconData("stepforward")``` |
| **`hasIconData`**  | Checks if the name is valid in current icon set.eg: ```bool isNameValid = AntDesign.hasIconData("stepforward")```|

## Example

``` dart
// Import package
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter/material.dart';

Icon(Ionicons.getIconData("ios-search"));
Icon(AntDesign.getIconData("stepforward"));
Icon(FontAwesome.getIconData("glass"));
Icon(MaterialIcons.getIconData("ac-unit"));
Icon(FontAwesome5.getIconData("address-book"));
Icon(FontAwesome5.getIconData("address-book",weight: IconWeight.Solid));
Icon(FontAwesome5.getIconData("500px", weight: IconWeight.Brand));
```
### Special thanks to react native vector ICONS library and its authors
