// Basic classes
class Circle {
  double radius;
  String color;

  Circle(this.radius, this.color);

  double getRadius() => radius;
  String getColor() => color;
}

class Student {
  String name;
  int age;
  double gpa;

  Student(this.name, this.age, this.gpa);

  String getName() => name;
  int getAge() => age;
  double getGPA() => gpa;
}

class Car {
  String make;
  String model;
  int year;

  Car(this.make, this.model, this.year);

  String getMake() => make;
  String getModel() => model;
  int getYear() => year;
}

class Book {
  String title;
  String author;
  int year;

  Book(this.title, this.author, this.year);

  String getTitle() => title;
  String getAuthor() => author;
  int getYear() => year;
}

class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double getWidth() => width;
  double getHeight() => height;
  double area() => width * height;
  double perimeter() => 2 * (width + height);
}

class BankAccount {
  String accountNumber;
  double balance;
  String owner;

  BankAccount(this.accountNumber, this.balance, this.owner);

  String getAccountNumber() => accountNumber;
  double getBalance() => balance;
  String getOwner() => owner;

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
    } else {
      print("Недостаточно средств.");
    }
  }
}

// Inheritance examples
class BaseCar {
  String make;
  int year;

  BaseCar(this.make, this.year);

  String description() => "Car: $make ($year)";
}

class PassengerCar extends BaseCar {
  PassengerCar(String make, int year) : super(make, year);

  @override
  String description() => "Passenger car: $make, year $year";
}

class Fruit {
  String name;

  Fruit(this.name);

  String taste() => "Unknown taste";
}

class Apple extends Fruit {
  Apple(String name) : super(name);

  @override
  String taste() => "Sweet and a bit sour";
}

class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

  String sound() => "Some sound";
}

class Dog extends Animal {
  Dog(String name, int age) : super(name, age);

  @override
  String sound() => "Woof!";
}

class Item {
  String name;
  double price;

  Item(this.name, this.price);

  String description() => "$name for \$$price";
}

class Product extends Item {
  Product(String name, double price) : super(name, price);

  @override
  String description() => "Product: $name costs \$$price";
}

class Shape {
  String color;
  double areaVal;

  Shape(this.color, this.areaVal);

  double area() => areaVal;
}

class CircleShape extends Shape {
  double radius;

  CircleShape(String color, this.radius) : super(color, 0);

  @override
  double area() => 3.14159 * radius * radius;
}

class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);

  void displayInfo() => print("Employee: $name, Salary: \$$salary");
}

class Manager extends Employee {
  Manager(String name, double salary) : super(name, salary);

  @override
  void displayInfo() => print("Manager: $name, Salary: \$$salary");
}
