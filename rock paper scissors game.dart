import 'dart:math';
import 'dart:io';
class Choice{
  String choice;
  List<String> types= ['rock','paper','scissors'];
  Choice(){
    choice=RandomChoice();
  }
  String RandomChoice(){
    var random=Random();
    return types[random.nextInt(types.length)];
  }
}
class UserChoice extends Choice{
  int userIntChoice;
  UserChoice(){
    AskUser();
    userIntChoice=GetUserChoice();
    choice=GetChoice();
  }
  void AskUser(){
    print('What is your choice?');
    print('select 0 for rock \n 1 for paper \n 2 for scissors');
  }
  int GetUserChoice(){
   var input =stdin.readLineSync();
   return int.parse(input);
  }
  String GetChoice(){
    return types[userIntChoice];
  }
}
void GameBetween(var player1, var player2){
  print('You choose ${player2.choice} ');
  if (player1.choice == player2.choice) {
    print('Draw!');
  }
  else {
    switch (player2.choice) {
      case 'rock':
        if (player1.choice == 'scissors') {
          print('you win!');
        }
        else {
          print('you lose!');
        }
        break;
      case 'paper':
        if (player1.choice == 'rock') {
          print('you win!');
        }
        else {
          print('you lose!');
        }
        break;
      case 'scissors':
        if (player1.choice == 'paper') {
          print('you win!');
        }
        else {
          print('you lose!');
        }
        break;
    }
  }
}

void main() {
  print('Welcome to our game');
  do{var computerChoice = Choice();
  var userChoice = UserChoice();
  GameBetween(computerChoice, userChoice);
  print('Do you want to play again? (y/n)');}
  while(stdin.readLineSync()!='n');
  print('Good bye!');
}
