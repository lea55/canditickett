import 'package:canditickets/menu.dart';
import 'package:canditickets/screen/buscar/buscar.dart';
import 'package:canditickets/screen/compras/compras.dart';
import 'package:canditickets/screen/explorar/explorar.dart';
import 'package:canditickets/screen/favoritos/favoritos.dart';
import 'package:canditickets/screen/perfil/perfil.dart';
import 'package:flutter/material.dart';

final routes = <String, WidgetBuilder>{
  Explorar.routeName: (BuildContext context) => Explorar(),
  Perfil.routeName: (BuildContext context) => Perfil(),
  Busqueda.routeName: (BuildContext context) => Busqueda(),
  Compras.routeName: (BuildContext context) => Compras(),
  Favoritos.routeName: (BuildContext context) => Favoritos(),
  Menu.routeName: (BuildContext context) => Menu(),
};
