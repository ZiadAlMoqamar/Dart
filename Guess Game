import 'dart:io';
import 'dart:math';
int askForMaxGuess(){
  String input;
  print('Enter Maximam number for guess');
  input=stdin.readLineSync();
  return int.parse(input);
}
int computerGuess(int maxNumber) {
  Random number =Random();
 return number.nextInt(maxNumber);
}
int userGuess(){
  String input;
  print('Enter your guess');
  input=stdin.readLineSync();
  return int.parse(input);
}
Map<bool , String> compareComputerAndUser (int computerGuess , int userGuess) {
  if(computerGuess > userGuess){
    return {false : 'Too Low'};
  }
  else if(computerGuess < userGuess) {
    return {false: 'Too High'};
  }
    else{
      return {true : 'You are right!'};
  }
  }
main() {
  print('Welcome to our guess game');
  int computerNumber=computerGuess(askForMaxGuess());
  int userNumber;
  do{
    userNumber =userGuess();
     print(compareComputerAndUser(computerNumber, userNumber));
  }
    while(computerNumber!=userNumber);
  print('Good Bye');
}
