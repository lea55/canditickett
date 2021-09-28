import 'package:canditickets/menu.dart';
import 'package:canditickets/routes/routes.dart';
import 'package:canditickets/screen/compras/compras.dart';
import 'package:canditickets/screen/explorar/explorar.dart';
import 'package:canditickets/screen/perfil/perfil.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      // statusBarColor: HexColor('EE573B'),
      statusBarColor: Colors.black,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarIconBrightness: Brightness.light));

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
      initialRoute: Perfil.routeName,
      theme: ThemeData(
          canvasColor: Colors.transparent,
          textSelectionTheme: const TextSelectionThemeData(
              selectionColor: Colors.white,
              cursorColor: Colors.white,
              selectionHandleColor: Colors.white),
          disabledColor: const Color.fromRGBO(142, 142, 147, 1.2),
          scaffoldBackgroundColor: Colors.grey[100],
          appBarTheme:
              const AppBarTheme(iconTheme: IconThemeData(color: Colors.white))),
    );
  }
}
