import 'dart:math';

class IMCCalculator {
  //Atributos
  double weight;
  double height;
  double imc;

  //constructor
  IMCCalculator({
    this.weight = 0,
    this.height = 0,
    this.imc = 0,
  });

  //Metodos
  double calculateIMC() {
    imc = weight / pow(height / 100, 2);
    return imc;
  }

  String getResult() {
    String result = "";
    if (imc < 18.5) {
      result = "Bajo peso";
    } else if (imc <= 24.9) {
      result = "Normal";
    } else if (imc <= 29.9) {
      result = "Sobre peso";
    } else {
      result = "Obesidad";
    }
    return result;
  }

  String getRecommentadtion() {
    String recommendation = "";
    if (imc < 18.5) {
      recommendation = "Debes alimentarte mejor, come mas saludable";
    } else if (imc <= 24.9) {
      recommendation =
          "Buen trabajo, sigue comiendo saludable y realiza actividad física.";
    } else if (imc <= 29.9) {
      recommendation = "Debes alimentarte saludable, no comas comida chatarra.";
    } else {
      recommendation =
          "Debes acudir con un especialista, corre en riesgo tu salud";
    }
    return recommendation;
  }

  String getImage() {
    String image = "";
    if (imc < 18.5) {
      image = "image1";
    } else if (imc <= 24.9) {
      image = "image2";
    } else if (imc <= 29.9) {
      image = "image3";
    } else {
      image = "image4";
    }
    return image;
  }
}
