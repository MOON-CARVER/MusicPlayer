import 'package:firebase_getx/consts/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ('M E L O P H I L E '),
      
// theme data here
theme: FlexThemeData.light(
  colors: const FlexSchemeColor(
    primary: Color(0xff00296b),
    primaryContainer: Color(0xffa0c2ed),
    secondary: Color(0xffd26900),
    secondaryContainer: Color(0xffffd270),
    tertiary: Color(0xff5c5c95),
    tertiaryContainer: Color(0xffc8dbf8),
    appBarColor: Color(0xffc8dcf8),
    error: null,
  ),
  usedColors: 7,
  surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
  blendLevel: 4,
  appBarStyle: FlexAppBarStyle.background,
  bottomAppBarElevation: 1.0,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 10,
    blendOnColors: false,
    blendTextTheme: true,
    useTextTheme: true,
    useM2StyleDividerInM3: true,
    thickBorderWidth: 2.0,
    elevatedButtonSchemeColor: SchemeColor.onPrimaryContainer,
    elevatedButtonSecondarySchemeColor: SchemeColor.primaryContainer,
    inputDecoratorSchemeColor: SchemeColor.primary,
    inputDecoratorBackgroundAlpha: 12,
    inputDecoratorRadius: 8.0,
    inputDecoratorUnfocusedHasBorder: false,
    inputDecoratorPrefixIconSchemeColor: SchemeColor.primary,
    alignedDropdown: true,
    useInputDecoratorThemeInDialogs: true,
    appBarScrolledUnderElevation: 8.0,
    drawerElevation: 1.0,
    drawerWidth: 290.0,
    bottomNavigationBarSelectedLabelSchemeColor: SchemeColor.secondary,
    bottomNavigationBarMutedUnselectedLabel: false,
    bottomNavigationBarSelectedIconSchemeColor: SchemeColor.secondary,
    bottomNavigationBarMutedUnselectedIcon: false,
    navigationBarSelectedLabelSchemeColor: SchemeColor.onSecondaryContainer,
    navigationBarSelectedIconSchemeColor: SchemeColor.onSecondaryContainer,
    navigationBarIndicatorSchemeColor: SchemeColor.secondaryContainer,
    navigationBarIndicatorOpacity: 1.00,
    navigationBarElevation: 1.0,
    navigationBarHeight: 72.0,
    navigationRailSelectedLabelSchemeColor: SchemeColor.onSecondaryContainer,
    navigationRailSelectedIconSchemeColor: SchemeColor.onSecondaryContainer,
    navigationRailIndicatorSchemeColor: SchemeColor.secondaryContainer,
    navigationRailIndicatorOpacity: 1.00,
  ),
  keyColors: const FlexKeyColors(),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  // To use the Playground font, add GoogleFonts package and uncomment
   fontFamily: GoogleFonts.notoSans().fontFamily,
),
darkTheme: FlexThemeData.dark(
  colors: const FlexSchemeColor(
    primary: Color(0xff667ea6),
    primaryContainer: Color(0xffc6daf4),
    secondary: Color(0xffe4a566),
    secondaryContainer: Color(0xffffe4a9),
    tertiary: Color(0xff9d9dbf),
    tertiaryContainer: Color(0xffdee9fa),
    appBarColor: Color(0xffdeeafa),
    error: null,
  ),
  usedColors: 7,
  surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
  blendLevel: 10,
  appBarStyle: FlexAppBarStyle.background,
  bottomAppBarElevation: 2.0,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 20,
    blendTextTheme: true,
    useTextTheme: true,
    useM2StyleDividerInM3: true,
    thickBorderWidth: 2.0,
    elevatedButtonSchemeColor: SchemeColor.onPrimaryContainer,
    elevatedButtonSecondarySchemeColor: SchemeColor.primaryContainer,
    inputDecoratorSchemeColor: SchemeColor.primary,
    inputDecoratorBackgroundAlpha: 48,
    inputDecoratorRadius: 8.0,
    inputDecoratorUnfocusedHasBorder: false,
    inputDecoratorPrefixIconSchemeColor: SchemeColor.primary,
    alignedDropdown: true,
    useInputDecoratorThemeInDialogs: true,
    drawerElevation: 1.0,
    drawerWidth: 290.0,
    bottomNavigationBarSelectedLabelSchemeColor: SchemeColor.secondary,
    bottomNavigationBarMutedUnselectedLabel: false,
    bottomNavigationBarSelectedIconSchemeColor: SchemeColor.secondary,
    bottomNavigationBarMutedUnselectedIcon: false,
    navigationBarSelectedLabelSchemeColor: SchemeColor.onSecondaryContainer,
    navigationBarSelectedIconSchemeColor: SchemeColor.onSecondaryContainer,
    navigationBarIndicatorSchemeColor: SchemeColor.secondaryContainer,
    navigationBarIndicatorOpacity: 1.00,
    navigationBarElevation: 1.0,
    navigationBarHeight: 72.0,
    navigationRailSelectedLabelSchemeColor: SchemeColor.onSecondaryContainer,
    navigationRailSelectedIconSchemeColor: SchemeColor.onSecondaryContainer,
    navigationRailIndicatorSchemeColor: SchemeColor.secondaryContainer,
    navigationRailIndicatorOpacity: 1.00,
  ),
  keyColors: const FlexKeyColors(),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  // To use the Playground font, add GoogleFonts package and uncomment
  // fontFamily: GoogleFonts.notoSans().fontFamily,
),
themeMode: ThemeMode.system,
 
// main app data here
//
 home: HomePage()



      
    );
  }
}
