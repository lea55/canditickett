import 'package:canditickets/models/ListaRankingProgramacion.dart';
import 'package:canditickets/models/listacategorias.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Perfil extends StatefulWidget {
  static final String routeName = 'Perfil';
  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  bool _crossFadeStateShowFirst = true;

  void _crossFade() {
    setState(() {
      _crossFadeStateShowFirst = _crossFadeStateShowFirst ? false : true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Center(
              child: AnimatedCrossFade(
                duration: Duration(milliseconds: 100),
                sizeCurve: Curves.bounceIn,
                crossFadeState: _crossFadeStateShowFirst
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                firstChild: FlatButton(
                  height: 40.0,
                  color: Colors.black,
                  minWidth: 400,
                  child: Text(
                    'Tap to',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    _crossFade();
                  },
                ),
                secondChild: FlatButton(
                  color: Colors.black,
                  height: 60.0,
                  minWidth: MediaQuery.of(context).size.width,
                  child: Text(
                    'Tap to',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    _crossFade();
                  },
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15, top: 10),
              height: 48,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: TextField(
                      cursorColor: Colors.grey[500],
                      decoration: InputDecoration(
                          hintStyle: TextStyle(fontFamily: 'DMSans'),
                          hintText: 'Ingresa un email',
                          border: InputBorder.none),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

PreferredSizeWidget appbar() {
  return AppBar(
    backgroundColor: HexColor('EE573B'),
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back,
        color: Colors.white,
      ),
      onPressed: () {},
    ),
    elevation: 0.0,
    toolbarHeight: 50.0,
    iconTheme: IconThemeData(color: Colors.grey[800]),
    actions: [
      IconButton(
        icon: Icon(
          Icons.help,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    ],
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(90.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30, left: 20),
              child: Text(
                'Crear nuevo evento',
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontFamily: 'DMSans',
                    fontWeight: FontWeight.w200),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
