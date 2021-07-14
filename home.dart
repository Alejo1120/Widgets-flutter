import 'package:flutter/material.dart';
import 'package:flutter_power/contador/mycounter.dart';
import 'package:flutter_power/cronometro/cronometro.dart';
import 'package:flutter_power/imagenes/imagenes.dart';
import 'package:flutter_power/text/ver.dart';
import 'package:flutter_power/wconta/widgetcontainer.dart';
import 'package:ionicons/ionicons.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfff8ffd7), //oxffcolorhexadecimal
        appBar: AppBar(
          title: Text('Power'),
        ),

        //con endDrawer se puede colorcar el menu en la parte derecha
        drawer: Drawer(
          child: ListView(
            children: [
              AppBar(
                title: Text('lista de pantallas'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffcda434), //color del borde
                          blurRadius: 7, // intensidad del borde
                          offset: Offset(4, 4), //ubicacion border en x ,y
                        ),
                      ]),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: IconButton(
                            onPressed: () {
                              print(' mis contactos');
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Pantalla2()),
                              );
                            },
                            icon: Icon(
                              Icons.contact_phone,
                              size: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Mis contactos',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15, //sepracion de botones
                  horizontal: 10,
                ),
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffcda434), //color del borde
                          blurRadius: 7, // intensidad del borde
                          offset: Offset(4, 4), //ubicacion border en x ,y
                        ),
                      ]),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: IconButton(
                            onPressed: () => {
                              //pase a pantalla
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Pantaconta()),
                              )
                            },
                            icon: Icon(
                              Icons.add_a_photo,
                              size: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Pantalla 3',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15, //sepracion de botones
                  horizontal: 10,
                ),
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.yellow[900],
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffcda434), //color del borde
                          blurRadius: 7, // intensidad del borde
                          offset: Offset(4, 4), //ubicacion border en x ,y
                        ),
                      ]),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: IconButton(
                            onPressed: () {
                              print('contador');
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      MyCounter(), //pantalla donde va a pasar
                                ),
                              );
                            },
                            icon: Icon(
                              Icons.add,
                              size: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Contador',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15, //sepracion de botones
                  horizontal: 10,
                ),
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.grey[850],
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffcda434), //color del borde
                          blurRadius: 7, // intensidad del borde
                          offset: Offset(4, 4), //ubicacion border en x ,y
                        ),
                      ]),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: IconButton(
                            onPressed: () {
                              print('cronometro');
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      Cronometro(), //pantalla donde va a pasar
                                ),
                              );
                            },
                            icon: Icon(
                              Icons.timer_rounded,
                              size: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Cronometro',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15, //sepracion de botones
                  horizontal: 10,
                ),
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffcda434), //color del borde
                          blurRadius: 7, // intensidad del borde
                          offset: Offset(4, 4), //ubicacion border en x ,y
                        ),
                      ]),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: IconButton(
                            onPressed: () {
                              print('Imagenes');
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      Imagenes(), //pantalla donde va a pasar
                                ),
                              );
                            },
                            icon: Icon(
                              Icons.people_outline,
                              size: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Imagenes',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

        drawerScrimColor: Colors.black38, //color cuando despliegue drawer
        drawerEnableOpenDragGesture: true, //contexto del body
        extendBody: true, //que no sobrepase el menu inferior

        bottomNavigationBar: Container(
          child: BottomNavigationBar(
            //botones tipo menu en la parte inferior ( no admite mas de 3)
            items: [
              BottomNavigationBarItem(
                icon: Expanded(
                  child: Icon(
                    Ionicons.home_outline, //iconos de ionic
                    color: Colors.black,
                  ),
                ),
                label: 'menu',
              ),
              BottomNavigationBarItem(
                icon: Expanded(
                  child: Icon(
                    Ionicons.chatbubbles_outline,
                    color: Colors.black,
                  ),
                ),
                label: 'chats',
              ),
              BottomNavigationBarItem(
                icon: Expanded(
                  child: Icon(
                    Ionicons.notifications_outline,
                    color: Colors.black,
                  ),
                ),
                label: 'notificaciones',
              ),
            ],
          ),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.greenAccent,
                blurRadius: 4,
              ),
            ],
          ),
        ),

        body: Center(
          child: Container(
            width: 300,
            padding: EdgeInsets.all(
                20), //margein invesible dentro del conta que ordena el text o img
            decoration: BoxDecoration(
                //decoracion container
                color: Colors.green, //color container
                borderRadius: BorderRadius.only(
                  //ajustar bordes
                  bottomLeft: Radius.circular(50), //borde arriba izq
                  topLeft: Radius.circular(70), // borde abajoiz
                  bottomRight: Radius.circular(10), //abajo derecha
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.greenAccent,
                    blurRadius: 5,
                    offset: Offset(5, 6),
                  ),
                ] //border del container
                ),
            child: Container(
              height: 370, //tamaño del container del texto
              child: Column(
                children: [
                  Text(
                    'Una mente independiente no se basa en lo que piensas, sino en cómo piensas.',
                    textAlign: TextAlign
                        .left, //letra dentro del container inici desde la izq
                    style: TextStyle(
                      color: Colors.white, //color de letra
                      fontSize: 10, //tamano de letra
                      letterSpacing: 0.7, //espaciazado entre letras
                    ),
                    textScaleFactor: 2,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                  ),
                  Text(
                    'Convierte tu hobby en tu trabajo y no volverás a trabajar en la vida.',
                    textAlign: TextAlign
                        .left, //letra dentro del container inici desde la izq
                    style: TextStyle(
                      color: Colors.white, //color de letra
                      fontSize: 10, //tamano de letra
                      letterSpacing: 0.7, //espaciazado entre letras
                    ),
                    textScaleFactor: 2,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                  ),
                  Text(
                    'El mundo tal y como lo conocemos es fruto de nuestro pensamiento. No lo cambiaremos si no modificamos nuestro pensamiento.',
                    textAlign: TextAlign
                        .left, //letra dentro del container inici desde la izq
                    style: TextStyle(
                      color: Colors.white, //color de letra
                      fontSize: 10, //tamano de letra
                      letterSpacing: 0.7, //espaciazado entre letras
                    ),
                    textScaleFactor: 2,
                  ),
                ],
              ),
            ),
          ),
        ),

        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.send), //icono del boton flotante
          onPressed: () => {
            //pase a pantalla
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Pantalla2()),
            )
          },
        ),
      ),
    );
  }
}
