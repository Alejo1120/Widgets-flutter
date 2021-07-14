import 'package:flutter/material.dart';
import 'package:flutter_power/pages/home.dart';
import 'package:ionicons/ionicons.dart';

class Imagenes extends StatelessWidget {
  const Imagenes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Imagenes con SinglechildScrollView'),
        ),
        body: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          //1 image
                          color: Colors.black,
                          height: 300,
                          width: 200,
                          child: Image.network(
                            //imagenes url de internet
                            "https://i.pinimg.com/originals/b0/8d/b2/b08db25e891bba910fadcec2585c1f90.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                        Container(
                          //2 image
                          color: Colors.black,
                          height: 300,
                          width: 200,
                          child: Image.asset(
                            //imagenes dentro del proyecto
                            'assets/imagenes/lobo.jpg',
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        Container(
                          //3 image
                          color: Colors.black,
                          height: 300,
                          width: 200,
                          child: Image.network(
                            //imagenes url de internet
                            "https://image.winudf.com/v2/image1/Y29tLk5haHVtR29kZXYuR29rdVVsdHJhSW5zdGluY3Rfc2NyZWVuXzJfMTU1NTMwNTE4OV8wNjc/screen-2.jpg?fakeurl=1&type=.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          //4 image
                          color: Colors.black,
                          height: 300,
                          width: 200,
                          child: Image.asset(
                            //imagenes dentro del proyecto
                            'assets/imagenes/imagepruebafluttermoney.jpg',
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  reverse: false,
                  child: Column(
                    children: [
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              //4 image
                              color: Colors.black,
                              height: 300,
                              width: 200,
                              child: Image.asset(
                                //imagenes dentro del proyecto
                                'assets/imagenes/imagepruebafluttermoney.jpg',
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.symmetric(vertical: 20)),
                            Container(
                              //3 image
                              color: Colors.black,
                              height: 300,
                              width: 200,
                              child: Image.network(
                                //imagenes url de internet
                                "https://image.winudf.com/v2/image1/Y29tLk5haHVtR29kZXYuR29rdVVsdHJhSW5zdGluY3Rfc2NyZWVuXzJfMTU1NTMwNTE4OV8wNjc/screen-2.jpg?fakeurl=1&type=.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              //2 image
                              color: Colors.black,
                              height: 300,
                              width: 200,
                              child: Image.asset(
                                //imagenes dentro del proyecto
                                'assets/imagenes/lobo.jpg',
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                            Container(
                              //1 image
                              color: Colors.black,
                              height: 300,
                              width: 200,
                              child: Image.network(
                                //imagenes url de internet
                                "https://i.pinimg.com/originals/b0/8d/b2/b08db25e891bba910fadcec2585c1f90.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: FloatingActionButton(
                //icono para pasar a la siguiente pantalla
                backgroundColor: Colors.black,
                child: Icon(
                  Ionicons.arrow_redo,
                  color: Colors.white,
                ),
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  )
                },
              ),
            ),
            Text('volver a home')
          ],
        ),
      ),
    );
  }
}
