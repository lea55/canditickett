import 'package:canditickets/models/ListaRankingProgramacion.dart';
import 'package:canditickets/models/listacategorias.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Explorar extends StatefulWidget {
  static final String routeName = 'Explorar';
  @override
  _ExplorarState createState() => _ExplorarState();
}

class _ExplorarState extends State<Explorar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 20,
          width: 130,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/logocandi.png',
              ),
            ),
          ),
        ),
        actions: [
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
        child: SafeArea(
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Categorias',
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
                    margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Conciertos populares',
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
      scrollDirection: Axis.vertical,
      child: Container(
        margin: EdgeInsets.only(
          top: 15,
        ),
        child: Column(
          children: List.generate(5, (index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    width: MediaQuery.of(context).size.width * 0.99,
                    height: 145,
                    child: Card(
                      color: Colors.white,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),
                        onTap: () {},
                        child: Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.60,
                              child: Container(
                                margin: EdgeInsets.only(left: 20, right: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Concierto de Daddy Yankee',
                                      style: TextStyle(
                                          color: HexColor('ED5734'),
                                          fontSize: 15,
                                          fontFamily: 'DMSans',
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 18,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.calendar_today_outlined,
                                          size: 12,
                                          color: Colors.black,
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Text(
                                          'jun 12, 2021',
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontFamily: 'DMSans',
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 18,
                                    ),
                                    Row(
                                      children: [
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
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
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
                          ],
                        ),
                      ),
                    )),
                SizedBox(
                  height: 15,
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
