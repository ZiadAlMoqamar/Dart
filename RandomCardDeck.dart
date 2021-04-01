import 'dart:math';

void runProgram() {
  print('Hello to our Game!');
  print(cardChoice());
}

int cardNumber() {
  Random number =Random();
  return number.nextInt(12);
}

String cardName(int cardNumber) {
  switch (cardNumber) {
    case 1:
      return 'Ace';
      break;
    case 0:
      return 'King';
      break;
    case 11:
      return 'Queen';
      break;
    case 12:
      return 'jack';
      break;
    default:
      return cardNumber.toString();
  }
}

String cardType() {
  List<String> typeName = ['Club', 'Diamond', 'Spade', 'Heart'];
  Random index= Random();
  return typeName[index.nextInt(3)];
}

Map<String,String> cardChoice(){
  return {cardName(cardNumber()):cardType()};
}
