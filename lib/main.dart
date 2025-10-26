import 'package:flutter/material.dart';
import 'package:marathi_books/mainpages/Books.dart';
import 'package:marathi_books/mainpages/navbars.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isDarkMode = prefs.getBool("isDarkMode") ?? false;
  runApp(MyApp(isDark: isDarkMode,));
}

class MyApp extends StatefulWidget {
  final bool isDark;
  const MyApp({super.key,required this.isDark});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late ThemeMode _themeMode;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _themeMode = widget.isDark ? ThemeMode.dark : ThemeMode.light;
  }

  void _toggleTheme() async{
    setState(() {
      if(_themeMode == ThemeMode.light) {
        _themeMode = ThemeMode.dark;
      }
      else {
        _themeMode = ThemeMode.light;
      }
    });
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool("isDarkMode", _themeMode == ThemeMode.dark);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: _themeMode,
      home: Navbars(toggleTheme: _toggleTheme,isDark: _themeMode == ThemeMode.dark,),
    );
  }
}
