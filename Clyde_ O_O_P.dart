import 'dart:io';

// Define an interface
abstract class Animal {
  void makeSound();
}

// Define a base class
class AnimalBase {
  void eat() {
    print('Animal is eating.');
  }
}

// Define a subclass inheriting from the base class and implementing an interface
class Dog extends AnimalBase implements Animal {
  String name;

  Dog(this.name);

  @override
  void makeSound() {
    print('$name barks.');
  }

  // Override a method from the base class
  @override
  void eat() {
    print('$name is eating dog food.');
  }
}

// Method to initialize an instance with data from a file
Dog initializeDogFromFile(String filePath) {
  final file = File(filePath);
  final name = file.readAsStringSync().trim();
  return Dog(name);
}

// Method to demonstrate the use of a loop
void loopDemo() {
  for (int i = 0; i < 5; i++) {
    print('Loop iteration $i');
  }
}

void main() {
  // Create an instance of Dog initialized with data from a file
  final dog = initializeDogFromFile('dog_name.txt');

  // Call methods to demonstrate features
  dog.makeSound();
  dog.eat();

  // Demonstrate the use of a loop
  loopDemo();
}
