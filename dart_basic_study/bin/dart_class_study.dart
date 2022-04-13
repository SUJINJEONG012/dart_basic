import 'dart:async';

void main() {
  print('class 공부');
  Student girlStudent = Student('송혜교', 30); //인스턴스 생성
  print(girlStudent.name);
  print(girlStudent.age);

  girlStudent.name = '수진';
  girlStudent.age = 24;

  print(girlStudent.name);
  print(girlStudent.age);
  girlStudent.printInfo();
}

class Student {
  // Student(this.name, this.age);
  Student(String name, int age) {
    this.name = name;
    this.age = age;
  }
  String name = 'sujin';
  int? age;
  //변수2개 생성

  void printInfo() {
    print('-------');
    print('name: $name');
    print('age: $age');
    print('-------');
  }

  //함수1개 생성
}
