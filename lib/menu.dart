import 'package:canditickets/screen/buscar/buscar.dart';
import 'package:canditickets/screen/compras/compras.dart';
import 'package:canditickets/screen/explorar/explorar.dart';
import 'package:canditickets/screen/favoritos/favoritos.dart';
import 'package:canditickets/screen/perfil/perfil.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Menu extends StatefulWidget {
  static const String routeName = 'MenuPrincipal';
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: switchScreen(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 20,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        unselectedItemColor: Colors.grey[400],
        unselectedLabelStyle: const TextStyle(
            color: Colors.white,
            fontSize: 11,
            fontWeight: FontWeight.w500,
            fontFamily: 'DMSans'),
        selectedItemColor: HexColor('ED5734'),
        selectedLabelStyle: const TextStyle(
            color: Colors.white,
            fontSize: 11,
            fontWeight: FontWeight.bold,
            fontFamily: 'DMSans'),
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            label: 'Explorar',
          ),
          const BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined), label: 'Buscar'),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_outline,
              ),
              label: 'Favoritos'),
          const BottomNavigationBarItem(
            icon: Icon(Icons.confirmation_num_outlined),
            label: 'Compras',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }

  switchScreen(int currentIndex) {
    switch (_currentIndex) {
      case 0:
        return Explorar();

      case 1:
        return Busqueda();

      case 2:
        return Favoritos();
      case 3:
        return Compras();
      case 4:
        return Perfil();
    }
  }
}
