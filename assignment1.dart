void main(){
  int intnum = 10;
  double doublenum = 20.5;  
  String str = "Hello, there!";
  bool isDartFun = true;
  List<int> mylist = [10, 15, 20, 25];


  print("Integer: $intnum");
  print("Double: $doublenum");
  print("String: $str");
  print("Boolean: $isDartFun");
  print("List: $mylist");
}

// string to int and double conversion
void StringToNum() {
  String strInt = "12";
  String strDouble = "3.79";

  int myInt = int.parse(strInt);
  double myDouble = double.parse(strDouble);

  print("Converted Integer: $myInt");
  print("Converted Double: $myDouble");
}

// int to string and double conversion
void IntToStringAndDouble() {
  int myInt = 12;
  double myDouble = 3.79;

  String strFromInt = myInt.toString();
  String strFromDouble = myDouble.toString();

  print("String from Integer: $strFromInt");
  print("String from Double: $strFromDouble");
}

//string to double and int conversion
void convertAndDisplay(String numberStr){
  int intValue = int.parse(numberStr);
  double doubleValue = double.parse(numberStr);

  print("Converted Integer: $intValue");
  print("Converted Double: $doubleValue");

}

// CONTROL FLOW
// if-else statement
// numbers
void checkNumber() {
  int i = 0;
  if (i > 0){
    print("The number is positive.");
  }
  else if(i==0){
    print("The number is zero.");
  }else{
    print("The number is negative.");
  }
}

//age
void checkage(){
  int age = 18;

  if (age >= 18){
    print("You are eligible to vote.");
  } else {
    print("You are a minor.");
  }
  
}

//switch statement
void checkDay(){
  int day = 3;

  switch (day) {
    case 1:
      print("Monday");
      break;

    case 2:
      print("Tuesday");
      break;

    case 3:
      print("Wednesday");
      break;

    case 4:
      print("Thursday");
      break;

    case 5:
      print("Friday");
      break;

    default:
      print("It's a weekend!");  
  }
}

// for loop
void myloop1(){
  int i = 0;
  for (i=0; i<=10; i++){
    print(i);
  }
}

// while loop
void myloop2(){
  int i = 10;
  while(i >= 1){
    print(i);
    i--;
  }
}

// do-while loop
void myloop3(){
  var i = 1;
  var maxnum = 5;
  do {
    print("Value of i: $i");
    i += 1;
  } while (i <= maxnum);
}


void myNumbers(){
  var list1 = [1, 200, 3, 4, 255, 5, 6, 70, 18, 9, 10];

  //elements in the list
  for (var num in list1){
    print(num);
  }

  //checking even and odd numbers
  for (var num in list1) {
    if (num % 2 == 0) {
      print("Even number: $num");
    } else {
      print("Odd number: $num");
    }
  }

  //switch statement for numbers
  for (var num in list1) {
    switch (num) {
      case >= 1 && <= 10:
        print("Small");
        break;

      case >= 11 && <= 100:
        print("Medium");
        break;

    case >= 101:
      print("Large");
      break;
    }
  }
}