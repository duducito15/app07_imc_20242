import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double weight = 80;
  double height = 165;

  double imc = 0;
  String result = "Normal";
  String recommendation = "-";
  String image = "";

  void calculateIMC() {
    imc = weight / pow(height / 100, 2);
    if (imc < 18.5) {
      result = "Bajo peso";
      recommendation = "Debes alimentarte mejor, come mas saludable";
      image = "image1";
    } else if (imc <= 24.9) {
      result = "Normal";
      recommendation =
          "Buen trabajo, sigue comiendo saludable y realiza actividad física.";
      image = "image2";
    } else if (imc <= 29.9) {
      result = "Sobre peso";
      recommendation = "Debes alimentarte saludable, no comas comida chatarra.";
      image = "image3";
    } else {
      result = "Obesidad";
      recommendation =
          "Debes acudir con un especialista, corre en riesgo tu salud";
      image = "image4";
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF003049),
        title: Text("IMC App - 2025"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Bienvenido, selecciona tu peso y altura",
              style: TextStyle(
                fontSize: 16.0,
                color: Color(0xFF003049),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  weight.toStringAsFixed(0),
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF003049),
                  ),
                ),
                SizedBox(
                  width: 2.0,
                ),
                Text(
                  "Kg",
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF003049),
                  ),
                ),
              ],
            ),
            Slider(
              value: weight,
              min: 20,
              max: 200,
              onChanged: (double value) {
                weight = value;
                setState(() {});
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  height.toStringAsFixed(0),
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF003049),
                  ),
                ),
                SizedBox(
                  width: 2.0,
                ),
                Text(
                  "cm",
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF003049),
                  ),
                ),
              ],
            ),
            Slider(
              value: height,
              min: 20,
              max: 200,
              onChanged: (double value) {
                height = value;
                setState(() {});
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
              width: double.infinity,
              height: 50.0,
              child: ElevatedButton.icon(
                onPressed: () {
                  calculateIMC();
                },
                label: Text(
                  "Calcular",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                icon: Icon(Icons.play_arrow_rounded),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF003049),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Divider(
              height: 10.0,
              color: Color(0xFF003049),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Resultado: ",
              style: TextStyle(
                fontSize: 15.0,
                color: Color(0xFF003049),
              ),
            ),
            Center(
              child: Image.asset(
                "assets/images/$image.png",
                height: 200.0,
                width: 200.0,
                fit: BoxFit.contain,
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    imc.toStringAsFixed(1),
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Color(0xFF780000),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    result,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color(0xFF003049),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    recommendation,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Color(0xFF003049),
                      fontWeight: FontWeight.normal,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
