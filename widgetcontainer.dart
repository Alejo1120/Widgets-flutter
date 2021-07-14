import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_power/contador/mycounter.dart';
import 'package:ionicons/ionicons.dart';
//import 'package:flutter_power/widgets/botonnavigatorbarperzona.dart';
//bottomNavigationBar: BotonNavigatorBarPerzona(),  con el import importamos el widget creado y con boton llamamos la clase creada

class Pantaconta extends StatelessWidget {
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //appBar: AppBar(
        //title: Text('pantalla 3 container'),
        //),
        bottomNavigationBar: Container(
          //creacion de un navigaor bar para iconos de la parte inferior
          decoration: BoxDecoration(
            color: Colors.green,
            boxShadow: [
              BoxShadow(
                color: Colors.white12,
                blurRadius: 10,
              ),
            ],
          ),

          child: SafeArea(
            child: Row(
              children: [
                Expanded(
                  child: CupertinoButton(
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.home,
                            color: Colors.white,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 3),
                            width: 10,
                            height: 2,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  child: CupertinoButton(
                    child: Column(
                      //minimizar nuestro navigator perzonalizado
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Ionicons.add_sharp,
                          color: Colors.white,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 3),
                          width: 10,
                          height: 2,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  child: CupertinoButton(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Ionicons.people_outline,
                          color: Colors.white,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 3),
                          width: 10,
                          height: 2,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  child: CupertinoButton(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Ionicons.add_circle_outline,
                          color: Colors.white,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 3),
                          width: 10,
                          height: 2,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),

        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                  //color: Colors.blue,
                  gradient: LinearGradient(
                    begin: Alignment.topLeft, //color sea de arriba abajo
                    end: Alignment.bottomRight, //color termine abajo centrado
                    stops: [
                      //intencidad de colores
                      0.3,
                      0.6,
                      1,
                    ],
                    colors: [
                      //colores del gradiente
                      Colors.blue,
                      Colors.yellow,
                      Colors.purpleAccent,
                    ],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black, //color del borde
                      blurRadius: 7, // intensidad del borde
                      offset: Offset(4, 4), //ubicacion border en x ,y
                    ),
                  ]),
              width: 300,
              padding: EdgeInsets.symmetric(horizontal: 20)
                  .copyWith(top: 10, bottom: 10),
              child: Text(
                'jejejejeje estamos probando la app para ver que pedokasjdijdak jajaj viejo rami  estamos en una prueba de flutter para ver como funciona el pdaddinag ',
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(
            vertical: 50,
          )),
          Column(
            children: [
              Center(
                child: Container(
                  padding: EdgeInsets.all(2),
                  color: Colors.blue,
                  child: TextButton(
                    onPressed: () {
                      print('boton pressed');
                    },
                    child: Text(
                      'ON PRESSED',
                      style: TextStyle(
                        color: Colors.pink,
                        fontSize: 55,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(
                vertical: 20,
              )),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  padding: EdgeInsets.all(5),
                  child: TextButton(
                    onPressed: () {
                      print('boton camara');
                    },
                    child: Icon(
                      Icons.add_a_photo,
                      color: Colors.black,
                      size: 80,
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(
                vertical: 4,
              )),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(55),
                    color: Colors.grey,
                  ),
                  child: IconButton(
                    onPressed: () {
                      print('funcion de boton send');
                    },
                    icon: Icon(
                      Icons.send_to_mobile,
                      color: Colors.yellow,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ]),

        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.accessibility_rounded),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyCounter()));
          },
        ),
      ),
    );
  }
}
