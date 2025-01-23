import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                  "70",
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
              value: 70,
              min: 20,
              max: 200,
              onChanged: (double value) {},
              // activeColor: Colors.amber,
              // inactiveColor: Colors.blue,
              // overlayColor: Color(Colors.amber) ,
              // thumbColor: Colors.red,
            ),
            Slider(value: 70, min: 20, max: 200, onChanged: (double value) {}),
          ],
        ),
      ),
    );
  }
}
