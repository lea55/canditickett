import 'package:canditickets/models/ListaRankingProgramacion.dart';
import 'package:canditickets/models/listacategorias.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Compras extends StatefulWidget {
  static final String routeName = 'Compras';
  @override
  _ComprasState createState() => _ComprasState();
}

class _ComprasState extends State<Compras> {
  bool _crossFadeStateShow = true;

  void _crossFade() {
    setState(() {
      _crossFadeStateShow = _crossFadeStateShow ? false : true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: false,
            floating: true,
            excludeHeaderSemantics: false,
            expandedHeight: 400,
            flexibleSpace: Image.asset(
              "assets/daddy.jpg",
              fit: BoxFit.cover,
              height: 400,
            ),
            backgroundColor: Colors.black,
            leading: IconButton(
                onPressed: null,
                icon: Image.network(
                    "https://pngimg.com/uploads/netflix/netflix_PNG15.png")),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Image.network(
                        "https://upload.wikimedia.org/wikipedia/commons/0/0b/Netflix-avatar.png"),
                  )),
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Tv shows',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    Text(
                      'Movies',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    Text(
                      'My List',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    AnimatedCrossFade(
                      duration: Duration(milliseconds: 500),
                      sizeCurve: Curves.bounceOut,
                      crossFadeState: _crossFadeStateShow
                          ? CrossFadeState.showFirst
                          : CrossFadeState.showSecond,
                      firstChild: Container(
                        color: Colors.amber,
                        height: 100.0,
                        width: 100.0,
                      ),
                      secondChild: Container(
                        color: Colors.lime,
                        height: 100.0,
                        width: 100.0,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
