//1. Encapsulation:
class Pastry{
  String? _name;
  String? _flavour;
  int? _timeToBake;

  // Constructor for Pastry
  Pastry(this._name, this._flavour, this._timeToBake);

  // getter methods
  String getName(){
    return this._name!;
  }

  String getFlavour(){
    return this._flavour!;
  }

  int getTimeToBake(){
    return this._timeToBake!;
  }

  // setter methods
  void setName(String name){
    this._name = name;
  }

  void setFlavour(String flavour){
    this._flavour = flavour;
  }

  void setTimeToBake(int timeToBake){
    this._timeToBake = timeToBake;
  }
}

void main(){
  Pastry mypastry = Pastry("Croissant", "Chocolate", 15);

  print("Pastry Name: ${mypastry.getName()}");
  print("Pastry Flavour: ${mypastry.getFlavour()}");
  print("Pastry Time to Bake: ${mypastry.getTimeToBake()} minutes");
}



//2. polymorphism:
class Poultry{
  void move(){
    print("Different birds move in different ways");
  }
}

class Chicken extends Poultry{
  @override
  void move(){
    print("Chickens walk and run");
  }
}

class Duck extends Poultry{
  @override
  void move(){
    print("Ducks waddle and swim");
  }
}

void main2(){
  Poultry myPoultry = Poultry();
  Chicken myChicken = Chicken();
  Duck myDuck = Duck();

  myPoultry.move(); 
  myChicken.move(); 
  myDuck.move();
}



//3. inheritance:
class Cuboid{
  int baseLength;
  int height;

  void volume(){
    int volume = baseLength * baseLength * height;
    print("Volume of the cuboid: $volume cubic units");
  }

  Cuboid(this.baseLength, this.height);
}

class Cone extends Cuboid{
  Cone(int baseLength, int height) : super(baseLength, height);

  @override
  void volume(){
    double volume = (1/3) * 3.14 * baseLength * baseLength * height;
    print("Volume of the cone: $volume cubic units");
  }
}

void main3(){
  Cuboid mycuboid = Cuboid(5, 10);
  Cone mycone = Cone(5, 10);


  mycuboid.volume();
  mycone.volume();
}


//4. abstraction:
abstract class Students{
  int regNo;

  Students(this.regNo);

  void displayDetails();

}

class Undergraduate extends Students{
  String name;

  Undergraduate(int regNo, this.name) : super(regNo);

  @override
  void displayDetails(){
    print("Undergraduate Student: $name, Registration No: $regNo");
  }
}

void main4(){
  Undergraduate student = Undergraduate(12345, "John Doe");
  student.displayDetails();
}