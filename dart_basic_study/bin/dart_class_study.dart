import 'dart:async';

void main() {
  print('class 공부');
  Student girlStudent = Student(); //인스턴스 생성
  print(girlStudent.name);
  print(girlStudent.age);

  girlStudent.name = '수진';
  girlStudent.age = 24;

  print(girlStudent.name);
  print(girlStudent.age);
  girlStudent.printInfo();
}

class Student {
  String name = 'sujin';
  int? age;

  void printInfo() {
    print('-------');
    print('name: $name');
    print('age: $age');
    print('-------');
  }
}
