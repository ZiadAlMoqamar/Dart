import 'dart:math';
import 'dart:io';
import 'dart:core';
class Exam {
  int examDegree;
  int correctDegree;
  Exam() {
    examDegree = setExamDegree();
    correctDegree = theDoctorChooses();
  }
  int setExamDegree() {
    print('Enter the full degree of the exam');
    var _userInput = stdin.readLineSync();
    return int.parse(_userInput);
  }

  int theDoctorChooses() {
    var random = Random();
    return random.nextInt(examDegree);
  }
}

class Guess {
    String userGuess(int user,int correctGuess) {
    if (user == correctGuess) {
      return 'You Are Right!';
    } else if (user > correctGuess) {
      return 'Too High';
    } else {
      return 'Too Low';
    }
  }
  String computerGuess(int computer, int correctGuess){
    if (computer == correctGuess) {
      return 'Sobhi won';
    } else if (computer < correctGuess) {
      return 'sobhiGuessLow';
    } else {
      return 'sobhiGuessHigh';
    }
  }

  int yourGuess() {
    print('Enter Your Guess');
    var _studentGuess = stdin.readLineSync();
    return int.parse(_studentGuess);
  }

  int sobhiGuess(int maxExamDegree) {
    var random = Random();
    return random.nextInt(maxExamDegree);
  }

  int sobhiNextGuess(int max, int min, String sobhiIndex) {
    var random = Random();
    if (sobhiIndex == 'sobhiGuessLow') {
      return min + random.nextInt(max - min);
    } else {
      return (min - random.nextInt(min)).abs();
    }
  }
}

void main() {
  int userGuessIs;
  int sobhiGuessIs;
  int _theCorrectGuess;
  int maxGuess;
  var exam = Exam();
  var guess = Guess();
  maxGuess = exam.examDegree;
  _theCorrectGuess = exam.correctDegree;
  sobhiGuessIs = guess.sobhiGuess(maxGuess);
  var sobhiIndex;
  var userIndex;
  do {
    userIndex = guess.userGuess(guess.yourGuess(), _theCorrectGuess);
    if (userIndex == 'You Are Right!') {
      print(userIndex);
      break;
    } else {
      print(userIndex);
    }
    sobhiIndex = guess.computerGuess(sobhiGuessIs, _theCorrectGuess);
    if (sobhiIndex == 'Sobhi won') {
      print(sobhiIndex);
    } else {
      sobhiGuessIs = guess.sobhiNextGuess(maxGuess, sobhiGuessIs, sobhiIndex);
      print(sobhiIndex);
    }
  } while (sobhiIndex != 'Sobhi won');
}
