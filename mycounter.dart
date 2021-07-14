import 'package:flutter/material.dart';
import 'package:flutter_power/cronometro/cronometro.dart';

class MyCounter extends StatefulWidget {
  @override
  State createState() => MyCounterState();
}

class MyCounterState extends State {
  int contador = 0;

  void agregar() {
    //funcion del contador
    contador++;
    setState(() {}); //setstated refresca nuestro valores de la pantalla
  }

  @override
  Widget build(BuildContext context) {
    print('state');
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.yellow,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Text(
                  'contador',
                  style: TextStyle(
                    fontSize: 60,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(20)),
              Text(
                '$contador', //valor de la variable
                style: TextStyle(
                  fontSize: 100,
                  color: Colors.purple,
                ),
              ),
              FloatingActionButton(
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.add,
                  size: 50,
                ),
                onPressed: this.agregar,
              ),
              FloatingActionButton(
                backgroundColor: Colors.red,
                child: Icon(
                  Icons.send_outlined,
                  size: 50,
                ),
                onPressed: () => {
                  //pase a pantalla
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Cronometro()),
                  )
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
