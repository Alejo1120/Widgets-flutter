import 'package:flutter/material.dart';
import 'package:flutter_power/wconta/widgetcontainer.dart';

class Pantalla2 extends StatelessWidget {
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green[500],
        appBar: AppBar(
          actions: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Icon(
                    Icons.event_busy,
                    size: 25,
                  ),
                ),
              ],
            )
          ],
          title: Text(
            'contactos',
            style:
                TextStyle(fontSize: 30, fontStyle: FontStyle.italic, shadows: [
              Shadow(
                color: Colors.white10,
                blurRadius: 50,
              ),
            ]),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.black,
              child: Center(
                child: Container(
                  width: 300,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(200),
                  ),
                  child: Icon(
                    Icons.account_circle,
                    color: Colors.white,
                    size: 150,
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 50,
                    horizontal: 5,
                  ),
                  child: Container(
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        'Mis contactos',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  width: double.infinity,
                  color: Colors.grey,
                  alignment: Alignment.center,
                  child: Text(
                    'una prueba debajo',
                    style: TextStyle(
                      color: Colors.yellow,
                      fontStyle: FontStyle.italic,
                      fontSize: 35,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.add,
              color: Colors.greenAccent,
              size: 40,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Pantaconta()));
            }),
      ),
    );
  }
}
