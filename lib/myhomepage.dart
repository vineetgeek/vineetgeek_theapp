import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wordpress_flutter/splash_page.dart';

import './widgets/helpers.dart';
import './config.dart';
import './pages/home.dart';
import 'services/theme_changer.dart';
import 'theme.dart';

class MyHomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
      create: (_) => ThemeChanger(),
      child: Builder(builder: (context) {
        final themeChanger = Provider.of<ThemeChanger>(context);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: TITLE,
          themeMode: themeChanger.getTheme,
          darkTheme: Style.get(true),
          theme: Style.get(false),
          home: Directionality(
            textDirection: textDirection,
            child: HomePage(),
          ),
        );
      }),
    );
  }
}
