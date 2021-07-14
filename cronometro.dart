import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_power/imagenes/imagenes.dart';
import 'package:ionicons/ionicons.dart';

class Cronometro extends StatefulWidget {
  const Cronometro({Key? key}) : super(key: key);

  @override
  _CronometroState createState() => _CronometroState();
}

class _CronometroState extends State<Cronometro> {
  int milisecond = 0;
  bool initiar = false; //iniciar cronometro

  late Timer timer;

  //cancelar el cronometro si el widget ya no aprarece en nuestro arbol
  @override
  void dispose() {
    print('detener');
    if (Timer != null) {
      timer.cancel();
    }
  }

  //funcion del boton de iniciar
  void boton() {
    if (!this.initiar) {
      timer = Timer.periodic(Duration(milliseconds: 100), (timer) {
        this.milisecond += 100;
        setState(() {});
      });
      this.initiar = true; //initiar es verdadero
    } else {
      if (timer != null) {
        timer.cancel();
      }
      this.initiar = false;
    }
    setState(() {});
  }

  //convertir a hora:minu:seg:milisegun
  String convertir() {
    final Duration duration = Duration(milliseconds: this.milisecond);

    String dos(int valor) {
      return valor >= 10 ? "$valor" : "0$valor";
    }

    String hora = dos(duration.inHours);
    String minutos = dos(duration.inMinutes.remainder(60));
    String seconds = dos(duration.inSeconds.remainder(60));
    //String milisengun = dos(duration.inMilliseconds.remainder(10000));

    return "$hora:$minutos:$seconds";
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white12,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 50),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      child: Text(
                        'Cronometro',
                        style: TextStyle(
                          color: initiar ? Colors.blueAccent : Colors.redAccent,
                          fontSize: 50,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Horas : Minutos : Segundos',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    Center(
                      child: Text(
                        this.convertir(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 70,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CupertinoButton(
                child: Text(
                  //conficional de iniciar o parar
                  initiar ? "Parar" : 'Iniciar',
                  style: TextStyle(
                    color: initiar ? Colors.red : Colors.blueAccent,
                    fontSize: 40,
                  ),
                ),
                onPressed: this.boton,
              ),
              Padding(padding: EdgeInsets.only(top: 50)),
              Container(
                child: FloatingActionButton(
                  //icono para pasar a la siguiente pantalla
                  backgroundColor: Colors.white30,
                  child: Icon(
                    Ionicons.arrow_redo,
                    color: Colors.white,
                  ),
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Imagenes()),
                    )
                  },
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
