import 'dart:io';

void main() {
  Map<String, String> vocabulary = {
    'Algorithm': 'A step-by-step procedure to solve a problem',
    'Compiler': 'A program that converts source code into machine code',
    'Variable': 'A container used to store data values',
  };

  // Print all words
  printWords(vocabulary);

  // Search for a word
  stdout.write('\nEnter a word to search: ');
  String searchWord = stdin.readLineSync()!;

  if (vocabulary.containsKey(searchWord)) {
    print('Meaning: ${vocabulary[searchWord]}');
  } else {
    print('Word not found');
  }

  // Total words learned
  print('\nTotal words learned: ${vocabulary.length}');

  // Delete a word
  stdout.write('\nEnter a word to delete: ');
  String deleteWord = stdin.readLineSync()!;
  vocabulary.remove(deleteWord);

  // Print words alphabetically
  printAlphabetically(vocabulary);
}

// Prints each word and its meaning nicely
void printWords(Map<String, String> vocab) {
  print('\nVocabulary List:');
  vocab.forEach((word, meaning) {
    print('$word → $meaning');
  });
}

// Prints words in alphabetical order
void printAlphabetically(Map<String, String> vocab) {
  print('\nAlphabetical Order:');
  var sortedKeys = vocab.keys.toList()..sort();
  for (var key in sortedKeys) {
    print('$key → ${vocab[key]}');
  }
}
