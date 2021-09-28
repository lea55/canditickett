import 'package:canditickets/models/ListaRankingProgramacion.dart';
import 'package:canditickets/models/listacategorias.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Favoritos extends StatefulWidget {
  static final String routeName = 'Favoritos';
  @override
  _FavoritosState createState() => _FavoritosState();
}

class _FavoritosState extends State<Favoritos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 50,
          width: 120,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/logojobiex.png',
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
              splashRadius: 22.0,
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none_outlined,
                color: Colors.black,
              )),
          const SizedBox(
            width: 10,
          ),
          IconButton(
              splashRadius: 22.0,
              onPressed: () {},
              icon: const Icon(
                Icons.monetization_on_outlined,
                color: Colors.black,
              )),
          const SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(top: 8, right: 10, bottom: 8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Container(
                  width: 40,
                  height: 10,
                  child: Image.asset(
                    'assets/perfilfreelancer.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
        elevation: 1,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Populares',
                        style: TextStyle(
                            color: HexColor('2D2D2D'),
                            fontSize: 22,
                            fontFamily: 'DMSans',
                            fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.blue,
                          onSurface: Colors.red,
                        ),
                        onPressed: () {},
                        child: Column(
                          children: [
                            Text(
                              'VER TODO',
                              style: TextStyle(
                                  color: HexColor('2D2D2D'),
                                  fontSize: 13,
                                  fontFamily: 'DMSans',
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                CardCategorias(),
                Container(
                  margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Programacion Mobile',
                        style: TextStyle(
                            color: HexColor('2D2D2D'),
                            fontSize: 22,
                            fontFamily: 'DMSans',
                            fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.blue,
                          onSurface: Colors.red,
                        ),
                        onPressed: () {},
                        child: Text(
                          'VER TODO',
                          style: TextStyle(
                              color: HexColor('2D2D2D'),
                              fontSize: 13,
                              fontFamily: 'DMSans',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                BusquedaExplorar(),
                Container(
                  margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Programacion Mobile',
                        style: TextStyle(
                            color: HexColor('2D2D2D'),
                            fontSize: 22,
                            fontFamily: 'DMSans',
                            fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.blue,
                          onSurface: Colors.red,
                        ),
                        onPressed: () {},
                        child: Text(
                          'VER TODO',
                          style: TextStyle(
                              color: HexColor('2D2D2D'),
                              fontSize: 13,
                              fontFamily: 'DMSans',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                BusquedaExplorar(),
                Container(
                  margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Programacion Mobile',
                        style: TextStyle(
                            color: HexColor('2D2D2D'),
                            fontSize: 22,
                            fontFamily: 'DMSans',
                            fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.blue,
                          onSurface: Colors.red,
                        ),
                        onPressed: () {},
                        child: Text(
                          'VER TODO',
                          style: TextStyle(
                              color: HexColor('2D2D2D'),
                              fontSize: 13,
                              fontFamily: 'DMSans',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                BusquedaExplorar(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CardCategorias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.only(left: 15, right: 15, top: 15),
        child: Row(
          children: List.generate(5, (index) {
            return Container(
                height: 340,
                margin: EdgeInsets.only(
                  left: 0,
                ),
                child: Card(
                  color: Colors.transparent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0)),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(0),
                    onTap: () {},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            margin: EdgeInsets.only(
                                top: 10, bottom: 10, left: 10, right: 10),
                            width: MediaQuery.of(context).size.width * 0.70,
                            height: 270,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    listacategorias[index]['img'],
                                  )),
                            )),
                        Container(
                          margin: EdgeInsets.only(
                              top: 10, bottom: 10, left: 10, right: 10),
                          child: Row(
                            children: [
                              Text(
                                listacategorias[index]['name'],
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'DMSans',
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ));
          }),
        ),
      ),
    );
  }
}

class BusquedaExplorar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.only(
          right: 15,
          top: 15,
          bottom: 10,
        ),
        child: Row(
          children: List.generate(5, (index) {
            return Column(
              children: [
                Container(
                    margin: EdgeInsets.only(left: 20),
                    width: MediaQuery.of(context).size.width * 0.80,
                    height: 383,
                    child: Card(
                      color: Colors.white,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),
                        onTap: () {},
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                left: 15,
                                top: 10,
                                bottom: 10,
                                right: 15,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 26,
                                        backgroundImage: AssetImage(
                                          'assets/perfilfreelancer.jpg',
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Leandro Velazquez',
                                            style: TextStyle(
                                              fontFamily: 'DMSans',
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                right: 30, top: 5),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow[700],
                                                  size: 18,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow[700],
                                                  size: 18,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow[700],
                                                  size: 18,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow[700],
                                                  size: 18,
                                                ),
                                                Icon(
                                                  Icons.star_outline,
                                                  color: Colors.yellow[700],
                                                  size: 18,
                                                ),
                                                Container(
                                                  child: Text(
                                                    '4.5',
                                                    style: TextStyle(
                                                      fontFamily: 'DMSans',
                                                      color: HexColor('5B5B5B'),
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Container(
                                      height: 50,
                                      child: VerticalDivider(
                                        thickness: 0.5,
                                        color: Colors.grey[300],
                                      )),
                                  Container(
                                    child: Row(
                                      children: [
                                        Column(
                                          children: [
                                            Icon(
                                              Icons.bookmark_border,
                                              color: HexColor('5B5B5B'),
                                            ),
                                            Text(
                                              "Guardar",
                                              style: TextStyle(
                                                  color: HexColor('5B5B5B'),
                                                  fontSize: 12,
                                                  fontFamily: 'DMSans',
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Colors.grey[300],
                              thickness: 0.5,
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 10,
                                left: 15,
                                right: 15,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    listaRankingProgramacion[index]['name'],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'DMSans',
                                      fontSize: 17,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 5, left: 15, right: 15, bottom: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.local_offer_outlined,
                                        size: 20,
                                        color: HexColor('5B5B5B'),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'Fixed',
                                        style: TextStyle(
                                          color: HexColor('5B5B5B'),
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'DMSans',
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.access_time,
                                        size: 20,
                                        color: HexColor('5B5B5B'),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '30 min',
                                        style: TextStyle(
                                          color: HexColor('5B5B5B'),
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'DMSans',
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        size: 20,
                                        color: HexColor('5B5B5B'),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'Formosa,Argentina',
                                        style: TextStyle(
                                          color: HexColor('5B5B5B'),
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'DMSans',
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Colors.grey[300],
                              thickness: 0.5,
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: 20, right: 20, top: 5, bottom: 10),
                              child: Text(
                                "Se tendra que integrar 2 perfiles en una sola app para mejorar la eficiencia del mismo.Se debe elabora una app funcional como la plataforma fivver...",
                                style: TextStyle(
                                    height: 2.1,
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontFamily: 'DMSans',
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Divider(
                              color: Colors.grey[300],
                              thickness: 0.5,
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: 15,
                                right: 15,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.monetization_on_outlined,
                                              size: 20,
                                              color: HexColor('5B5B5B'),
                                            ),
                                            Text(
                                              "Presupuesto",
                                              style: TextStyle(
                                                  color: HexColor('5B5B5B'),
                                                  fontSize: 11,
                                                  fontFamily: 'DMSans',
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            Text(
                                              "20.000 y 30.000",
                                              style: TextStyle(
                                                  color: HexColor('5B5B5B'),
                                                  fontSize: 12,
                                                  fontFamily: 'DMSans',
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.01,
                                  ),
                                  Container(
                                      height: 60,
                                      child: VerticalDivider(
                                        thickness: 0.5,
                                        color: Colors.grey[300],
                                      )),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.01,
                                  ),
                                  Spacer(),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.access_time,
                                              size: 20,
                                              color: HexColor('5B5B5B'),
                                            ),
                                            Text(
                                              "Entrega",
                                              style: TextStyle(
                                                  color: HexColor('5B5B5B'),
                                                  fontSize: 11,
                                                  fontFamily: 'DMSans',
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            Text(
                                              "2 Meses",
                                              style: TextStyle(
                                                  color: HexColor('5B5B5B'),
                                                  fontSize: 12,
                                                  fontFamily: 'DMSans',
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.03,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                      height: 60,
                                      child: VerticalDivider(
                                        thickness: 0.5,
                                        color: Colors.grey[300],
                                      )),
                                  Spacer(
                                    flex: 1,
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.people_outline,
                                              size: 20,
                                              color: HexColor('5B5B5B'),
                                            ),
                                            Text(
                                              "Freelancer",
                                              style: TextStyle(
                                                  color: HexColor('5B5B5B'),
                                                  fontSize: 11,
                                                  fontFamily: 'DMSans',
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            Text(
                                              "3",
                                              style: TextStyle(
                                                  color: HexColor('5B5B5B'),
                                                  fontSize: 12,
                                                  fontFamily: 'DMSans',
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
                SizedBox(
                  height: 20,
                )
              ],
            );
          }),
        ),
      ),
    );
  }
}
