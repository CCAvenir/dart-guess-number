import 'dart:io';
main() {
  const int magicNum = 47; 
  int attempts = 0;          
  bool guessedCorrectly = false;

  print('Welcome to the Guessing Game');
  print('Try to guess the magic number');

  while (!guessedCorrectly) {
    stdout.write('Enter your guess: ');
    int? playerGuess = int.tryParse(stdin.readLineSync()!);
    attempts++;

    guessedCorrectly = checkGuess(playerGuess, magicNum);
  }

  print('Congrats! You have guessed the magic number around $attempts attempts.');
}

bool checkGuess(int? guess, int magicNum) {
  if (guess == null) {
    print('Please enter a valid number.');
    return false;
  }

  if (guess < magicNum) {
    print('Too low. Try a higher number.');
    return false;
  } else if (guess > magicNum) {
    print('Too high. Try a lower number.');
    return false;
  }

  return true;
} 
