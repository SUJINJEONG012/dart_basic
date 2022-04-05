//main 함수의 void main(){}
//main함수 무조건 있어야 한다.
//main 함수 기준 실행

// void main() {
//   //반복문
//   //while(반복 횟수 중요x) , for (반복 횟수 중요 o)
//   //반복 횟수가 중요한가?

//   final count = 3;
//   for (var i = 0; i < count; i++) {
//     print(1);
//   }
// }

import 'dart:math';

void main() {
  String message = functionStudyReturnType();
  print(message);
}
//반환타입 함수명(메개변수){
// 실행문 ;
//};

String functionStudyReturnType() {
  print('functionStudyReturnType1');
  print('functionStudyReturnType2');
  return '완료';
}

void basic19forIn() {
  final scoreList = [42, 52, 68, 50, 90, 30, 100, 88, 90];
  int i = 1;
  for (var score in scoreList) {
    if (score >= 60) {
      print('$i번째 학생 합격입니다. 점수: $score');
    } else {
      print('$i번째 불합격입니다. 점수: $score');
    }
    i++;
  }
}

void basic18for() {
  //반복문
  //while(반복 횟수 중요x) , for (반복 횟수 중요 o)
  //반복 횟수가 중요한가?

  final scoreList = [42, 52, 68, 50, 90, 30, 100, 88, 90];
  for (var i = 0; i < scoreList.length; i++) {
    if (scoreList[i] >= 60) {
      print('${i + 1} 번째 합격입니다. 점수:${scoreList[i]}');
    } else {}
    print('${i + 1} 번째 불합격입니다. 점수:${scoreList[i]}');
  }
}

void basic17while() {
  //반복문
  //while(반복 횟수 중요x) , for (반복 횟수 중요 o)
  //반복 횟수가 중요한가?

  // while(조건문이 참일 경우){
  //   실행문을 반복합니다.
  // };

  int weight = 65;
  int count = 0;

  while (weight > 50) {
    print('총 몸무게:$weight');
    count++;
    print('줄넘기 횟수: $count');

    var removeWeight = Random().nextInt(2);
    weight = weight - removeWeight;
    print('감량 몸무게: $removeWeight kg');
    print('총 몸무게: $weight kg');
    print('-------');
  }
}

void basic16Switch() {
  //switch
  int number = 17;
  print('number % 10 ${number % 10}');
  switch (number % 10) {
    case 1:
      print('나머지 값이 1입니다.');
      break;
    case 2:
      print('나머지 값이 2입니다.');
      break;
    case 3:
      print('나머지 값이 3입니다.');
      break;
    default:
      print('나머지 값이 1,2,3이 아닙니다.');
  }
}

void basic15ifelse() {
  int number = 9;

  if (number % 5 == 0) {
    print('5의 배수입니다.');
  } else if (number % 4 == 0) {
    print('4의 배수입니다.');
  } else if (number % 4 == 0) {
    print('3의 배수입니다.');
  } else {
    print('5,4,3의 배수가 아닙니다.');
  }
  ;
}

void basic14if() {
  int number = 454;
  if (number % 3 == 0) {
    print('$number값은 4의 배수입니다.');
  } else {
    print('$number값은 4의 배수가 아닙니다.');
    print('나머지 값 : ${number % 4}');
  }
  print('end');
}

void basic13FinalConst() {
  // final 상수: 변치 않는 데이터, 값을 재할당 못함, (run-time때 값 할당), 실행될때 할당
  // const 상수 : 변치 않는 데이터, 값을 재할당 못함 (complie에 값 할당), 위젯할때 많이 활용
  const String name = 'Sujin';
  print(name);

  final DateTime now1 = DateTime.now();
  print(now1);

  Future.delayed(Duration(seconds: 1), () {
    final DateTime now2 = DateTime.now();
    print('------');
    print(now1);
    print(now2);
  });
}

void basic12EmptyNull() {
  //non-nullable : null 값 허용되지 않음
  String nonNullName = ''; // 비어있는 값을 가지고 있음
  print(nonNullName);

  //nullable :null 값 허용
  //작성법 변수타입?
  String? name = ''; // 빈값 empty
  print(name);

  name = 'Sujin';
  print(name);

  name = null; //null값
  print(name);
}

void basic11VarDynamicType() {
  //타입 추론이 아닌 타입을 명시 권장
  String name = 'Voyager 1';
  name = '22';
  int year = 1977;
  double antennaDiameter = 3.7;
  List<String> flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  Map<String, dynamic> image = {
    'tags': ['st']
  };

  dynamic varTest = 'Sujin';
  varTest = 3;
  varTest = 3.2;
  print(varTest);
}

void basic10Operator() {
  Map<String, dynamic> joinInputForm = {
    'name': 'Sujin',
    'age': 31,
    'height': 161.1,
    'phone': '010-1234-1234',
  };
  print('joinInputForm = $joinInputForm');

  //key 목록 keys
  print('joinInputForm.keys.toList() ${joinInputForm.keys.toList()}');
  //map의 길이, 개수
  print(joinInputForm.length);

  print(joinInputForm.values.toList());

  print('-----------');
  //포함 여부 판단
  print(joinInputForm.containsKey('name'));
  print(joinInputForm.containsKey('width'));

  //모든요소를 다 지운다.
  //map 빈 map으로 바꾼다.(empty)
  joinInputForm.clear();

  print(joinInputForm);
}

void basic9MapCUD() {
  Map map = {
    'key1': 'value1',
    'key2': 'value2',
    'key3': 'value3',
  };
  map['key3'] = 'Angela';
  print(map);
  print(map['name']);

  //key 값 할당
  //key 값 있다? = 선언 insert
  map['name'] = 'Sujin';
  print(map);
  print(map['name']);

  //key 값 있다? = update
  map['name'] = '수진';
  print(map);
  print(map['name']);

  //delete
  map.remove('key1');
  print(map);
  print(map['name']);
}

void basic8Map() {
  // Map : key,value 한쌍 이뤄진 자료 구조
  // key 값이 중복이 되면 안된다.
  // Map 변수명 =  {key:value,}
  // 키 값으로 데이터를 가지고 올 수 있다.

  Map<int, String> map = {2333: '홍길동', 100: '민지', 89: '지영'};
  print(map);
  print(map['100']);
  print(map[100]);

  print('-----------');

  Map<String, dynamic> joinInputForm = {
    'name': 'Sujin',
    'age': 31,
    'height': 170.5,
    'bool': true,
    'list': [true, true],
    'phone': '010-1234-5678'
  };
  print(joinInputForm);
  print(joinInputForm['name']);
}

void basic7ListOperator() {
  List<String> list = [];
  list.add('가');
  print(list);
  list.addAll(['b', 'c', 'a']);
  print(list);
  print(list[0]);
  print(list[3]);

  print(list.length);
  // 포함여부확인하는 연산자 타입이 boolean값으로 나옴
  print(list.contains('a'));
  print(list.contains('4'));
  print(list.contains('b'));

  print(list.last); //마지막 인덱스
  print(list.first);

  print('-----------');
  //값을 수정할 때
  list[0] = 'a';
  list[1] = '나';
  list[1] = '다';
  list[1] = '라';
  print(list);

  list.remove('라');
  print(list);
  //인덱스기반 삭제할 땐 removeAt
  list.removeAt(0);
  print(list);
}

void basic6SetType() {
  //set 선언 방식
  Set<String> set = {};
  set.add('a');
  set.add('b');
  set.add('c');
  set.add('a');
  print(set);
  print(set.length);
  //set은
  //순서보장이 안됩니다. 열거타입
  //중복을 허용하지 않는다.
  //index 접근 X
  //리스트보다 빠르다.
  //print(set[2]);
}

void basic5List() {
  //list
  // <>제네릭타입 : eg. List<String> = List 안의 값들은 String 타입으로 제한
  List<String> list = <String>[];

  // List list = [];
  print(list);
  print(list.length);

  //list안에 값을 더할때 ,add();
  list.add('a');
  list.add('b');
  print(list);
  print(list.length);

  list.add('c');
  print(list);
  print(list.length);

  // list.add(12);
  // print(list);
  // print(list.length);
  // 순서 보장
  print(list[2]);
}

void basic4BooleanType() {
  //변수타입
  //boolean값
  bool isShow = false;
  print('isShow $isShow');

  bool isTrue = (4 > 10);
  print('isTure  > 10 = $isTrue');

  bool isTrue2 = (4 == 10);
  print('isTrue2 = 4 > 10 => $isTrue2');
  //변수규칙1. 기존 선언되었던 이름으로 중복해서 선언할 수 없다.
  //변수규칙2. 변수명은 소문자로시작하고, 띄어쓰기 안됌.
  isTrue2 = (4 == 4);
  print('isTrue2 = 4 == 4 => $isTrue2');

  isTrue2 = 4 == 4.0 && (2 == 2.2); //and 조건 이라 둘다참이어야 참
  print('isTrue2 = 4 == 4.0 && 2 == 2.2 $isTrue2');

  isTrue2 = 4 == 4.0 || (2 == 2.2); //or 조건 이라 하나라도 참이면 참
  print('isTrue2 = 4 == 4.0 && 2 == 2.2 $isTrue2');
}

void basic3Number() {
  //변수타입
  //숫자값 = 정수(int) , 정수(double, 소수점 0)
  int num1 = 12;
  int num2 = 5;
  print(num1 + num2);
  print(num1 - num2);
  print(num1 * num2);
  print(num1 / num2);
  print(num1 % num2);

  print('------------');
  int age = 24;
  double width = 40;
  double height = 178.3;
  print(age);
  print(height);
  print('---------');
  //값 변경
  //변수명 = 변수명값;
  age = age + 1;
  age++;
  age--;
  print(age);

  height = height + 1;
  print(height);

  width = width + 23;
  print(width);
}

void basic2String() {
  //변수타입
  String name = 'sujin';
  String nickname = 'angela';
  print('name $name');
  print('nickname $nickname');
}

void basic1() {
  var name = 'Voyager I';
  var year = 1977;
  var antennaDiameter = 3.7;
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune']; //문자열이 담긴 list
  var image = {
    'tags': ['saturn'],
    'url': '//path/to/saturn.jpg'
  }; //Map 값

  print(name);
  print(year);
}
