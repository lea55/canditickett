import 'dart:math';

import 'package:canditickets/models/ListaRankingProgramacion.dart';
import 'package:canditickets/models/listacategorias.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';

class Busqueda extends StatefulWidget {
  static final String routeName = 'Busqueda';
  @override
  _BusquedaState createState() => _BusquedaState();
}

class _BusquedaState extends State<Busqueda> {
  ScrollController _scrollController = new ScrollController();
  //
  static const _kBasePadding = 0.0;
  static const kExpandedHeight = 130.0;
  final ValueNotifier<double> _titlePaddingNotifier =
      ValueNotifier(_kBasePadding);

  double get _horizontalTitlePadding {
    const kCollapsedPadding = 40.0;

    if (_scrollController.hasClients) {
      return min(
          _kBasePadding + kCollapsedPadding,
          _kBasePadding +
              (kCollapsedPadding * _scrollController.offset) /
                  (kExpandedHeight - kToolbarHeight));
    }

    return _kBasePadding;
  }

  @override
  void initState() {
    _scrollController.addListener(() {
      _titlePaddingNotifier.value = _horizontalTitlePadding;
    });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverAppBar(
                actions: [
                  IconButton(
                      splashRadius: 20.0,
                      onPressed: () {},
                      icon: Icon(
                        Icons.settings_input_component_outlined,
                        color: Colors.white,
                        size: 22,
                      )),
                ],
                elevation: 5.0,
                expandedHeight: kExpandedHeight,
                floating: false,
                pinned: true,
                backgroundColor: Colors.white,
                leading: BackButton(
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                flexibleSpace: FlexibleSpaceBar(
                    collapseMode: CollapseMode.pin,
                    centerTitle: false,
                    titlePadding:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 0),
                    title: ValueListenableBuilder(
                      valueListenable: _titlePaddingNotifier,
                      builder: (
                        context,
                        value,
                        child,
                      ) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: _horizontalTitlePadding),
                          child: Container(
                            margin: EdgeInsets.only(left: 15, right: 25),
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    cursorColor: Colors.grey[500],
                                    decoration: const InputDecoration(
                                        hintStyle: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'DMSans',
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                        hintText: 'Buscar...',
                                        border: InputBorder.none),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                    background: Container(
                      color: HexColor('EE573B'),
                    ))),
            SliverList(
                delegate: SliverChildListDelegate(<Widget>[
              Column(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 10, bottom: 20),
                        child: Row(
                          children: const [
                            Text(
                              '10k de conciertos',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontFamily: 'DMSans',
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      BusquedaClientes(),
                    ],
                  )
                ],
              )
            ]))
          ],
        ),
      ),
    );
  }
}

class BusquedaClientes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        child: Column(
          children: List.generate(5, (index) {
            return ListTile(
              title: Column(
                children: [
                  Container(
                      child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.70,
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 20,
                                    backgroundImage: AssetImage(
                                      'assets/perfilfreelancer.jpg',
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Jockey Club',
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'DMSans',
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                                child: Container(
                              child: MaterialButton(
                                onPressed: () {},
                                textColor: Colors.red,
                                child: Icon(
                                  Icons.favorite_outline,
                                  size: 24,
                                ),
                                padding: EdgeInsets.all(13),
                                shape: CircleBorder(),
                              ),
                            ))
                          ],
                        ),
                      ),
                    ],
                  )),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 140,
                        width: MediaQuery.of(context).size.width * 0.25,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Miercoles',
                              style: TextStyle(
                                  color: HexColor('EE573B'),
                                  fontSize: 15,
                                  fontFamily: 'DMSans',
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              '22',
                              style: TextStyle(
                                  color: HexColor('EE573B'),
                                  fontSize: 80,
                                  fontFamily: 'DMSans',
                                  fontWeight: FontWeight.w800),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          height: 140,
                          width: MediaQuery.of(context).size.width * 0.02,
                          child: VerticalDivider(
                            thickness: 1,
                            color: Colors.grey[300],
                            indent: 10,
                            endIndent: 10,
                          )),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        height: 140,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              width: MediaQuery.of(context).size.width * 0.38,
                              decoration: BoxDecoration(
                                  color: HexColor('EE573B'),
                                  borderRadius: BorderRadius.circular(2)),
                              child: const Center(
                                child: Text(
                                  'Asunción,Paraguay',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontFamily: 'DMSans',
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                'Recital de Ozuna',
                                style: TextStyle(
                                    color: HexColor('2D2D2D'),
                                    fontSize: 30,
                                    fontFamily: 'DMSans',
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.location_on_outlined,
                                    size: 15,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Brooklyn 42, New York',
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'DMSans',
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 120,
                          child: Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: SizedBox(
                                height: MediaQuery.of(context).size.height,
                                child: Image.asset(
                                  'assets/daddy.jpg',
                                  fit: BoxFit.cover,
                                  repeat: ImageRepeat.noRepeat,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              onTap: () {},
            );
          }),
        ),
      ),
    );
  }
}
