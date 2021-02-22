enum Gender { male, female }

class Brain {
  double height;
  double weight;
  double age;
  Gender gender;
  double bmi;
  String type;
  String message;
  Brain() {
    height = 180.00;
    weight = 60;
    age = 20;
    gender = Gender.male;
    bmi = 26.0;
    type = "";
    message = "";
  }
  void cal() {
    this.bmi = ((this.weight * 10000) / (this.height * this.height));
    if (bmi < 18.5) {
      type = "Underwight";
      message =
          "Eat five to six smaller meals during the day rather than two or three large meals.";
    } else if (bmi < 24.9) {
      type = "Normal";
      message = "It is amazing you are just in the range";
    } else if (bmi < 29.9) {
      type = "Overweight";
      message = "Take care of your weight you can reduce it easily";
    } else {
      type = "Obeses";
      message = "Need to work hard otherwise have some problem in future.";
    }
  }
}

Brain bmi = Brain();
