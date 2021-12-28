import 'package:flutter/material.dart';

// solarized colors from:
//  https://github.com/altercation/solarized/blob/master/xresources/solarized

// light background tones
const Color solarizedBase3 = Color(0xfffdf6e3);
const Color solarizedBase2 = Color(0xffeee8d5);
// content tones
const Color solarizedBase1 = Color(0xff93a1a1);
const Color solarizedBase0 = Color(0xff839496);
const Color solarizedBase00 = Color(0xff657b83);
const Color solarizedBase01 = Color(0xff586e75);
// dark background tones
const Color solarizedBase02 = Color(0xff073642);
// accent colors
const Color solarizedYellow = Color(0xffb58900);
const Color solarizedOrange = Color(0xffcb4b16);
const Color solarizedBase03 = Color(0xff002b36);
const Color solarizedRed = Color(0xffdc322f);
const Color solarizedMagenta = Color(0xffd33682);
const Color solarizedViolet = Color(0xff6c71c4);
const Color solarizedBlue = Color(0xff268bd2);
const Color solarizedCyan = Color(0xff2aa198);
const Color solarizedGreen = Color(0xff859900);

final ColorScheme solarizedLight = buildSolarized(light: true);
final ColorScheme solarizedDark = buildSolarized(light: false);

ColorScheme buildSolarized({light = bool}) {
  if (light) {
    return const ColorScheme(
      primary: solarizedYellow,
      primaryVariant: solarizedOrange,
      onPrimary: solarizedBase2,
      secondary: solarizedViolet,
      secondaryVariant: solarizedMagenta,
      onSecondary: solarizedBase02,
      background: solarizedBase3,
      onBackground: solarizedBase00,
      surface: solarizedBase2,
      onSurface: solarizedBase01,
      error: solarizedRed,
      onError: solarizedBase02,
      brightness: Brightness.light,
    );
  } else {
    return const ColorScheme(
      primary: solarizedCyan,
      primaryVariant: solarizedViolet,
      onPrimary: solarizedBase2,
      secondary: solarizedBlue,
      secondaryVariant: solarizedYellow,
      onSecondary: solarizedBase02,
      background: solarizedBase02,
      onBackground: solarizedBase0,
      surface: solarizedBase03,
      onSurface: solarizedBase1,
      error: solarizedRed,
      onError: solarizedBase02,
      brightness: Brightness.dark,
    );
  }
}

final ThemeData solarizedLightTheme = buildSolarizedTheme(light: true);
final ThemeData solarizedDarkTheme = buildSolarizedTheme(light: false);

ThemeData buildSolarizedTheme({light = bool}) {
  final ColorScheme cs = buildSolarized(light: light);
  final ThemeData base = light ? ThemeData.light() : ThemeData.dark();
  return base.copyWith(
    primaryColor: cs.primary,
    backgroundColor: cs.background,
    scaffoldBackgroundColor: cs.surface,
    buttonTheme: base.buttonTheme.copyWith(colorScheme: cs),
    cardTheme: base.cardTheme.copyWith(color: cs.background),
    colorScheme: cs.copyWith(secondary: cs.secondary),
  );
}
