# [ 전문서적 핵심정리 ] "자바의 신" vol1 책 - by 로드북 

- 이 책은 추천을 받아서 학습한 책이며
- 이후 공유하고자 핵심 내용들을 정리해보았습니다.
- 아래 내용들을 "이미" 알고 계시는 분들은 이번 내용으로 복습한다 생각하시고
    - 훑고나서 다른 책을 읽는 것을 추천드립니다.

<br />

-------------

<br />

<img src="./cover.jpeg" alt="cover" title="cover" width="400" align="center" />


<br />

-------------

<br />

## 목차 Table of Contents 

- 1장 : 프로그래밍이란 무엇인가?
- 2장 : Hello God Of Java
- 3장 : 자바를 제대로 알려면 객체가 무엇인지를 알아야 해요
- 4장 : 정보를 어디에 넣고 싶은데
- 5장 : 계산을 하고 싶어요
- 6장 : 제가 조건을 좀 따져요
- 7장 : 여러 데이터를 하나에 넣을 수는 없을까요?
- 8장 : 참조 자료형에 대해서 더 자세히 알아봅시다
- 9장 : 자바를 배우면 패키지와 접근 제어자는 꼭 알아야 해요
- 10장 : 자바는 상속이라는 것이 있어요
- 11장 : 매번 만들기 귀찮은데 누가 만들어 놓은 거 쓸 수 없나요?
- 12장 : 모든 클래스의 부모 클래스는 Object에요
- 13장 : 인터페이스와 추상클래스, enum
- 14장 : 다 배운 것 같지만, 예외라는 중요한 것이 있어요
- 15장 : String
- 16장 : 클래스 안에 클래스가 들어갈 수도 있구나
- 17장 : 어노테이션이라는 것도 알아야 한다
- 18장 : 이제 기본 문법은 거의 다 배웠으니 정리해 봅시다
- 마치며....


<br />

-------------

<br />

-------------

<br />

## 1장 프로그래밍이란 무엇인가?

- 도어락과 비교할 수 있다.
- 비번을 입력하고 미리 만들어놓은 프로그램에서 제공하는 결과를 기다리거나
- 직접확인한다.

<br />

-------------

<br />


### 메소드
```java
public boolean checkPassword(String password){}
```
- 메소드의 구성
  - 메소드이름
  - 매개변수 param
  - 리턴타입 or void
  - 접근제어자
  - 예외목록
  - 메소드 내용
- 메소드의 필수 요소
  - 리턴타입
  - 변수명
  - 메소드 내용.

```java
// 한줄 주석

/*
* 블록주석
*/
*/

/**
 * 문서용 주석
*/
```

<br />

### 자바의 가장 작은 단위는 클래스다.

- 클래스라는 것은 (필수는 아니지만)
  - 상태와 variables.
  - 행동이 있어야한다. method
- 객체지향언어에서는 클래스를 활용에 현실세계를 반영할 수 있게 되었다.
- 자바 연산의 방향

```java
// 수학은 좌측에서 계산 우측 결과 지정
3 = 1 + 2
// 자바는 좌측에 결과 지정 우측 계산
a = 1 + 2
```

- 자바의 세미콜론
  - ( ; ) 세미콜론 자바에서 한줄을 의미하는 것, 즉. 인덴트를 별로 신경쓰지 않는다.
- 모든 프로그래밍 언어에는 예약어라는 것이 잇따
  - public, class, int, 등....

### 챕터 정리

1. 클래스란 자바의 최소단위
2. 메소드는 클래스의 행동
3. 매개변수는 메소드 이름 뒤 괄호에 넣어준다.
4. 메소드 앞에는 반드시 리턴타입이 있어야한다.
5. 클래스는 행동과 상태를, state, param 을 가지고 있어야한다.
6. 메소드에서 결과를 돌려주려면 return 예약어를 사용해야한다.



<br />

-------------

<br />

-------------

<br />


## 2장 Hello God of Java

### 자바의 커맨드

``` text
// 컴파일
javac Example.java

// 실행
// 실행시에는 .class 확장자 빼고 실행, 그러면 JVM 이 클래스를 찾아서 실행함
java Example 
```

### 키 포인트
- 자바는 대소문자를 따지므로 파일명부터 코드에서 까지 정확한 입력이 필요하다.
- 자바 파일은 .java 로 저장해야한다.
- 자바 컴파일 실행 및 절차.
  1. 소스
  2. 컴파일러
    2. 바이트코드
  3. 디스크
    2. 바이트코드
  4. JVM
    4. 기계어
  5. OS에서 실행
- 대부분의 프로그래밍 언어들은 텍스트 파일로 실행할 수 없다.
- compile 이란 사람의 언어로 만든 코드를 기계어로 바꾸어준다.
- .java 컴파일시 이진수/바이너리 파일인 .class로 변환되어짐.
  -컴파일된 클래스파일은 JVM 에서 읽어서 OS 에서 실행됨

### OS 별 파일/디렉토리 관련 커맨드
- 맥,리눅스
  - cd /users/....
  - ls
- 윈도우
  - cd c: \users\
  - dir


### 자바 프로그램의 진입점

- java 프로그램의 진입점/시작접은 main() 메소드
- main 메소드는 반드시 있어야한다.
```java
public static void main(Stringp[ args) {}
```
1. main() 의 이름앞에는 public static void 예약어가 들어가야 한다.
2. 매개변수로는 String[] args가 들어가야한다.
3. main() 메소드가 없다면 java 커맨드로 실행할 수 없다.
4. System.out.println 은 시스템에서 한줄을 출력할 때 사용된다.
5. System.out.print 그냥 출력된다.
6. 주석의 타입 : 한줄 / 블록 / 문서
7. 메소드 선언시 꼭필요한것
1. 리턴
2. 이름
3. 내용




<br />

-------------

<br />

-------------

<br />




## 3장 : 자바를 제대로 알려면 객체가 무엇인지를 알아야 해요

1. 클래스가 건물의 설계도라면 객체는 실제 건물이라고 할수 있다
2. 클래스는 테슬라 전기차가 될것이고 객체는 주혁이의 테슬라 전기차이다
2. 객체를 생성하기 위해서 꼭 사용해야 하는 예약어는 new라고 한다
3. 생성자는 클래스의 인스턴스/객치를 생성하는 메소드
4. 객체의 매소드를 사용하기 위해서는 클래스 또는 인스턴스 뒤에 .점 을 찍어준다.
5. 메소드를 사용하기 위해서는 객체를 생성해야한다 (나중에 살펴볼 static 정적 메소드는 제외)
6. new Car() 생성자를 사용한다.



<br />

-------------

<br />

-------------

<br />


## 4장 : 정보를 어디에 넣고 싶은데

### 변수의 종류
- 지역변수
  - 지역변수를 선언한 중괄호 내에서만 유효하다.
- 매개변수
  - 메소드가 호출될 때 시작되고 메소ㄷ가 끝나면 소멸된다.
- 인스턴스 변수
  - 객체가 생성될때 시작되고 그 객체를 참조하고 있는 다른 객체가 없으면 소멸된다.
- 클래스 변수
  - 클래스가 처음 호출될대 시작되고 자바 프로그램이 끝날때 소멸된다.

### 변수 이름 컨벤션
- 길이 제한은 없다
- 첫 문자는 유니코드 문자, 알파벳, 달러사인, 언더스코어, 그런데 보통 $와 _로 시작하지는 않는다.
- 보통은 메소드 이름 처럼 지정해서 사용한다.
- 첫 문자는 소문자로 시작하는 단어이고, 두 번째 단어의 첫 문자만 대문자로 시작하면 된다.
- 상수의 경우에는 모두 대문자로 시작한다.

### 자바의 두가지 자료형
- primitive, 기본
  - int a= 1;
- reference 참조 자료형
  - Calculat cal = new Calcualt;
  - new가 붙는다.
- String 특이케이스의 참조자료형
  - String a = "this is String";
  - new String() 을 사용 가능하나 비추천

### 자바의 기본자료형
- boolean
- 숫자
  - 정수형
    - byte 2^8
    - short 2^16-1
    - int 2^32-1
    - long 2^64-1
    - char 2^16
  - 소수형
    - float
    - double

### 정수형에서 unsigned(부호가 없는) 것은 단지 char 뿐이다.


- 8비트와 byte 타입
- byte는 0또는 1로 이루어진 비트 8개의 집합.
- 바이트의 맨 앞 비트는 음수 1 양수0 를 구분하는 것으로 쓰이므로 2^6 ~ 2^1의 합 127이 최대 양수 최대값이다.
- 128이 음수 최대값, 11111111 이 127 이고 10000000 가 128
- 최대값을 1 넘어서면 최소값을 반환하고 최소값을 -1넘어서면 최대값을 반환한다.
- long 타입은 숫자 뒤에 L 을 붙여줘야 한다.
- float 32비트 && double 64비트
- 돈 계산은 java.math.BigDecimal 을 사용한다.



<br />

-------------

<br />

-------------

<br />


## 5장 : 계산을 하고 싶어요
- 연산의 종류 - + - * / %
- int a / int b = 는 결과가 소수점이어야해도 int를 반환한다.
- 5/10 은 0을 반환한다.
- float a/ float b 는 0.5를 반환한다. 10/5는 2.0을 바노한한다.
- % 는 나머지 opeartor.




<br />

-------------

<br />

-------------

<br />

## 8장 : 자료형

### static
- static은 정말 주의 해서 사용해야한다.
- static 클래스변수는 한번만 생성된다.
- static메소드와 일반 메소드의 차이
  - static 메소드는 객체를 생성하지 않아도 실행할 수 있다.
  - static 메소드는 클래스 변수만 사용할 수 있다.
  - 인스턴스 변수는 사용할 수 없다.

- static 블록
  - 객체를 초기화 시 한번 씩만 호출된다.

- 참조자료형과 기본자료형의 pass by 값의 변화를 프로그래밍으로 변환해보았다.
  - package : chapter08
  - class : PassBy.java

### ( ... ) 사용방법

1. 매개변수로 배열 []을 선언 안해도된다.
2. 대신 메소드의 마지막 변수로 입력받아야한다.
3. ** String을 제외한 모든 참조자료형은 new를 사용한다.

```java
public static void main(String[] args) {
    test(4, "A", "B", "C");
}

public static void test(int num, String... words) {
    for (String w : words) {
        System.out.println(w);
    }
}
```

<br />

### 챕터 정리

1. 생성자를 만들지 않으면 컴파일러가 기본생성자를 작성한다.
  1. 기본 생성자? : 매개변수가 없는 생성자
2. 매개 변수가 있는 생성자를 만들고 매개변수가 없는 생성자를 호출하면 매개변수 없이 생성자를 만들면 컴파일에러가 발생한다.
3. 생성자의 갯수는 제한이 있다. 기본 생성자를 제외한 모든 인스턴스 변수의 조합으로.
4. 인스턴스의 변수나 메소드 내에서 생성한 변수와 구분하기 위해서는 this 키워드를 사용한다.
5. " return value; "  로 메소드 결과값을 반환
6. " public void methodName() " 의 void 로 아무것도 리턴을 하지 않는다.
7. static 메소드는 클래스 인스턴스를 초기화 하지 않아도 사용 가능하다.
8. 매개변수를 다르게 하는 것은 메소드 오버로딩으로 같은 이름의 메소드를 재활용한다.
9. 기본자료형은 pass by value를 한다.
10. 참조자료형은 pass by reference 를 한다.
11. 매개 변수의 수가 가변적일때 T ... paramName 으로 매개변수 () 마지막으로 선언해준다.





<br />

-------------

<br />

-------------

<br />



## 9장 패키지와 접근제어자.

- package 내부의 있는 java코드를 실행하기 위해서는 root 디렉토리에서 실행을 해야한다.
- ex) java com.example.ai.Foo
- 대상 클래스가 포함되어 있는 패키지로 들어가서 실행할 수 없다.

### 자바 패키지 선언 제약사항
- 소스의 가장 첫줄에 있어야함.
- 패키지 선언위에 주석이나 공백은 있어도되지만 다른 자바 문장이 하나라도 있으면 컴파일이안됨.
- 패지키 선언은 소스당 일대일로만 존재한다.
- 패키지이름과 위치한 폴더 이름이 같아야한다.
  - 다를경우 컴파일러가 찾지 못한다

### 패키지이름 컨벤션
- 그룹별 패키지 네이밍
  - java 자바벤더
  - javax 자바 확장페키지 벤더
  - org 오픈소스
  - com 영리단체, 회사.
- 패키지 이름은 소문자로 약속되어있다.
- 자바의 예약어를 사용하면 절대 안된다.

<br />

> import static .... 으로 static 메소드와 변수들을 가져온다.

<br />

### 접근제어자와 범위
- public
  - 누구나 접근가능
- protected
  - 같은 패키지 내에 있거나 상속받은 경우에만 접근 가능
- pacakge private
  - 아무런 접근제어자를 적어주지 않을때 생성되며 같은 패키지 내에 잇을때만 접근가능
- private 해당 클래스 내에서만 접근가능하다.
- 하나의 Profile.java 파일에서는, Profile 클래스만 public으로 선언가능하다.

### 챕터 정리
1. package com.fa.fea.... 로 패키지를 선언한다.
2. 패키지 선언은 첫번째 줄에 위치하여야한다.
3. 최상위 패키지는 java를 사용하면 안된다.
4. 패키지 이름에 예약어가 포함되면 안된다..
   ``` 예를들어 int 와 new ```

5. import는 클래스 외부에 선언되야한다.
6. 같은 패키지에 있는 클래스를 사용할때도 import 를 해줘야한다.
7. 특정 패키지 에 있는 클래스를 모두 import 할 때는 .*; 로 끝난다.
   ```java.util.*;```

8. 클래스에 선언되어 있는 static 한 메소드나 변수를 import 하려면
   ``` import statc <package>  ```

9. 접근제어자중에는 public이 가장 권한이 많다.
10. 접근제어자중에는 private으로 다른 클래스의 접근을 막는다. (가장 좁은 범위)
11. 접근 제어자중 protected로 패키지와 상속관계에 있는 클래스만 접근 할 수 있게한다.
12. package-private
  - 접근 제어자 명시하지 않으면 자동으로 붙음
  - 같은 패키지에서만 접근 가능하다.
  - ```java int methodName(){} ```
13. Member.java 소스에서 public으로 선언 가능한 클래스는 ```public Member{}``` 뿐이다.


<br />

-------------

<br />

-------------

<br />


### 10장 : 자바는 상속이라는 것이 있어요

- ``` extends ``` 예약어 사용
- ```public``` 과 ```protected``` 변수와 메소드에 접근가능.
- ```package-private``` 과 ```private``` 사용불가.
- 상속한 클래스의 인스턴스가 생성되면 부모 인스턴스의 기본 생성자가 자동으로 호출된다.
- 하지만 기본생성자가 없고 매개변수가 들어가는 생성자가 있다면 구현해주어야한다.
  ``` super(someVal, thisValu); ```

- 오버라이드한 메소드말고 부모의 메소드를 원한다면 super().methodName() 으로 사용가능하다.
- 하나의 클래스만 상속 가능하다.
- super는 반드시 자식 클래스의 생성자의 가장 첫줄에 선언되어야한다.

### 상속에서의 overriding

- 메소드 overriding은 부모에서와 동일한 리턴 타입을 가져야만 한다.
- 메소드 Overriding은 부모 클래스의 메소드와 동일한 시그니처를 갖는 자식 클래스의 메소드가 존재할 때 성립된다.
- 접근제어자는 변경가능하지만 부모보다 권한이 좁아질수는 없다
  - ex) 부모 public 자식 private X
  - ex) 부모 private 자식 public O

### 메소드 overriding 과 overloading

- overriding 덮어씀 / 부모의 메소드를 덮어씀
- overloading 확장, 메소드 매개변수들로 확장

### 타입캐스팅 (형변환)
- 자식 클래스가 부모 클래스로 형변환 가능
```java
Parent p = new ChildCasting(); 
```

- 반대는 불가
```java
/// !!!! 컴파일에러 
Child p = new Parent();
```

### instanceof

- 예를들어 배열에 부모 클래스 인스턴스와 자식 클래스 인스턴스 모두 담겨있다면 이후에 자식 클래스 메서드를 어떻게 확인할 것인가?
- instanceof 로 확인한다.
- if else 에서 instance 사용시 최하위 타입 child 먼저 확인해줘야한다. 아니면 전부 parent로 선언될 것이다.
```java
if (obj instanceof ChildClass ){
    return obj.childMethod();    
} else if (obj instanceof ParentClass){
    return obj.parentMethod();    
} else {
    //
}
```

- 참조 자료형도 형변환이 가능하다.
- 자식 타입의 객체를 부모 타입으로 형 변환 하는 것은 자동으로 된다.
- 부모 타입의 객체를 자식 타입으로 형 변환을 할 때에는 명시적으로 타입을 지정해 주어야 한다.
  - (아래 예시) *** 단, 부모 타입의 실제 객체는 자식 타입이어야만 한다.
```java
// 예시
Child child = new Child();
Parent cParent = child;
Child realChild = (Child) child;
```

- instanceof 예약어로 객체의 타입을 확인할 수 있다.
  - 부모도 instanceof가 true 로 반환하기때문에 ```if > else if > else ``` 블록 최상단에 위치시키는게 바람직하다.

### 챕터 정리 : 다형성 Polymorphism

1. 클래스의 선언시 예약어 ``` extends ``` 를 사용한다.
2. 자식의 생성자를 실행시 부모생성자 먼저 실행되야 한다.
3. 부모 생성자를 자식클래스에서 직접 선택하려고 할 때 super() 예약어를 사용한다.
4. overriding 은 메소드를 덮어 씌운다.
  - 제약사항 : 리턴 타입은 같아야함
  - 접근제어자는 더 wide하게 가능 ex) 부모 private, 자식 public
5. 오버로딩은 매게변수를 달리해서 확장하는 것.
6. ```Parent p = new Child();``` 로 객체생성가능
  1. 오버라이딩된 메소드를 사용하며
  2. 메소드도 사용가능하다, 단 메소드 호출시 캐스팅 해주어야함.

7. ```instanceof```  로 명시적으로 형 변환을 하기전에 타입을 확인하려면 어떤
8. 7번은 boolean 타입으로 리턴한다.
9. PolyMorphism 형 변환을 하더라도 실제 호출되는 것은 해당 인스턴스가 가지고 있는 hashcode

### Annotation
- @Deprecated 이제 안쓰는 거야라고 선언한 것이다.
- 버전 업 할 시에 호환성의 문제가 발생할 수 있으니 주의가 필요하다.



<br />

-------------

<br />

-------------

<br />


## 12장 : 모든 클래스의 부모 클래스는 Object에요

- Object 클래스에 선언되어 있는 메소드는 객채를 처리하기 위한 메소드와 쓰레드를 위한 메소드로 나뉜다.
- ** 쓰레드란 프로그램이 실행되는 단위 중 하나
- ** 참조 자료형의 toString() 메서드는 기본적으로 해시코드를 반환하며 값을 출력하기 위해서는 @Override 해야한다.

## 챕터 정리

1. java.lang.Object 는 모든 클래스의 최상위 부모 클래스이다. (우리가 만든 객체들 포함)
2. 클래스가 어떻게 선언되었는지 확인 할 수 있는 명령어는 ```javap```
3. Object에 선언되어있는 모든 클래스를 오버라이딩 할 필요가 없다.
4. clone 메소드는 같은 매개변수를 가진, 다른 해시코드를 가지는 클래스 인스턴스를 생성한다.
5. sout 호출시 object 클래스의 toString() 메소드를 호출한다.
6. 객체의 주소를 비교하는 것이 아닌, 값을 비교하려면 Object 클래스에 선언되어 잇는 equals 메소드를 overriding 해야한다.
7. Object 클래스에 선언되어있는 ```hashcode()``` 라는 메소드는 int를 반환한다.



<br />

-------------

<br />

-------------

<br />


## 13장

### 인터페이스와 추상클래스, 그리고 enum

- 자바에는 인터페이스 interface와 추상클래스 추상클래스가 있다.
- interface 와 abstract 클래스를 미리 구현하여 설계시 선언해서 개발할때는 기능 구현에 집중할 수 있다.
- 개발자의 역량에 따른 메소드의 이름과 매개 변수 선언의 격차를 줄일 수 있다.
- 공통적인 인터페이스와 abstract 클래스를 선언해 놓으면, 선언과 구현을 구분할 수 있다.


### 추상클래스
- 일부 완성되어 잇는 추상 클래스, 클래스명 앞에 abstract 예약어를 붙혀야한다.
- 추상 클래스 안에는 추상으로 선언된 메소드가 0개 이상 있으면 된다.
- 구현 안 된 메소드 포함가능
- 구현된 메소드 포함 가능
- static 메소드 선언 가능
- final 메소드 선언 가능
- 상속해서 사용 extends

### 인터페이스
- 인터페이스는 implements 예약어를 사용하며 모든 추상메소드들을 구현해야한다.
- static 또는 final 메소드가 있으면 안된다.
- 구현 안된 메소드만 포함 가능
- implments 로 구현


### final 클래스
- final 클래스는 상속을 할수 가 없다.
- 메소드 레벨도 final 선언이 가능하며 그럴경우 해당메소드는 오버라이딩이 불가하다.
- 변수에서 사용하는 것은 바꿀수 없다는 말이다
  ```ex) final int instanceVariable=1;```
- 해당 클래스가 파이널 이라고 해서 그안의 변수들도 final일 필요는 없다.

### enum 클래스 : 상수의 집합
- java.lang.Enum 을 무조건 상속받는다.

### 챕터 요약 정리

1. interface는 몸통이 없다.
2. ```implments``` 인터페이스 예약어
3. abstract 클래스는 일부만 구현되어있다.
4. 추상 클래스에 몸통이 없는 메소드는 abstract 예약어를 사용한다.
5. 클래스를 final로 선언하면 상속의 대상이 될 수 없다.
6. 메소드를 final로 선언하면 오버라이딩할수 없다.
7. 변수를 파이널로 선언하면 변경할 수 없다.
8. enum 클래스 선언시 값들 사이에 는 콤마를 입력한다.
9. enum 클래스는 java.lang.Enum을 상속한다.
10. enum 은 values() 로 상수의 목록을 리턴받는다.



<br />

-------------

<br />

-------------

<br />

## 14장 다 배운 것 같지만 예외라는 중요한 것이 있어요

- try : 모든 문장이 실행되다가 예외 발생한부분부터 catch 블록으로 넘어간다.
- catch : 예외 발생시 실행된다.
- finally : 항상 실행된다.
- 모든 exception 의 부모는 java.lang.Exception 이다.
- 다중 캐치는 가장 어린 자식부터 잡아줘야한다.

### Exception
- exception 의 자식클래스들
  - checked exception
  - error
    - 자바 프로그램 밖의 예외를 말한다.
    - 가장 흔한예가 서버의 디스크가 고장 났다든지, 메인보드가 맛이가서 자바 프로그램이 제대로 동작하지 못하는 겨웅.
    - error vs exception : 밖에서 발생햇는지와 안엣 발생했는지
  - runtime exception / unchecked exception.
- 상속트리
  - Throwable
    - excpetion
      - runtime exception
    - error

### Key Points
- 메소드를 선언할 때 매개 변수 소괄호 뒤에 throws라는 예약어를 적어 준 뒤 예외를 선언하면, 해당 메소드에서 선언한 예외가 발생했을때 호출한 메소드로 예외가 전달된다.
- 만약 메소드에서 두 가지 이상의 예외를 던질 수 있다면 implements 처럼 콤마로 구분하여 예외 클래스 이름을 적어주면 된다.
- try 블록 내에서 예외를 발생시킬 경우에는 throws라는 예약어를 적어준뒤 예외 객체를 생성하거나 생성되어 있는 객체를 명시해준다.
  - throw한 예외 클래스가 catch 블록에 선언되어 있지 않거나, throws에 포함되어 있지 않으면 컴파일에러가 발생한다.
- catch 블록에서 예외를 throw할 경우에도 메소드 선언의 throws 구문에 해당 예외가 정의 되어 있어야만한다.
- 예외를 만들 수도 있다. extends Exception/ 상속받지 않은 exception 은 throws 할 수 없다.
- 만약 우리가 만드는 예외가 실행중에 발생할 확률이 높은 경우에는 runtime 예외로 만드는 것이 나을 수도 있다.
- 임시로 예외 클래스를 만들 때에는 반드시 try-catch로 묶어줄 필요가 있을 경우에만 Exception 클래스를 확장한다.
- 일반적으로 실행시 예외를 처리할 수 있는 경우에는 RuntimeException 클래스를 확장하는 것을 권장한다.
- catch 문 내에 아무런 작업 없이 공백을 놔두면 예외 분석이 어려워지므로 꼭 로그 처리와 같은 예외처리를 해줘야만한다. (참고 사항, Java Exception Strategy, 자바 예외 전략 )

### 챕터 정리
1. 예외를 처리하기 위한 세가지 블록에는 try catch finally 가 있다.
2. try 블록은 예외가 발생될 수 있는 코드를 감싼다.
3. finally 블록은 try-catch 또는 try 이후에, 즉, 예외 발생여부 무관하게 실행된다.
4. 예외 종류의 세가지는
  1. checked exception : throws를 하기 때문에 try, 또는 catch 를 반드시 해주어야한다.
  2. unchecked exception : (=runtime exception) throws를 하지 않고 에러 발생
  3. error - 자바 프로그램 외부 문제발생시
5. 캐릭터셋이란 알파벳을 제외한 문자를 뜻한다.
6. 자주 사용되는 부분은 별도의 메소드로 만들어두는것이 재사용성을 위해서 좋다.




<br />

-------------

<br />

-------------

<br />


## 15장 String

- 한국어 인코딩은 UTF-8 또는 UTF-16을 사용해야한다.
- 모든 참조자료형은 생성 후 미 구현시 기본이 null 이다.
- null 체크는 ```val != null || val == null```로 쉽게 확인 가능하다.
- String의 length() 과 isEmpty 찾아보기
- 같은 String 객체를 = "" 로생성하면 자바 Constant풀에서 재활용 하기때문에 == true가 되지만 new String으로 초기화 시에는 다르다.
- *** String은 정말 필요할 때 아니면 값들을 상수풀에서 재사용 할 수 있게 생성자 사용을 금하자.
- equals로 값을 비교하자.

### StringBuilder와 StringBuffer
- immutable 한 String 의 단점을 보완하는 클래스에는 StringBuffer와 StringBuilder가 잇다.
- String은 ``` value +"more text" ``` 처럼 값을 변경시 새로운 문자열을 생성하고 기존 문자열은 GC대상이 된다.
- GC의 타겟이 많아지므로 스케일링 시에 분명 성능저하의 원인이 될 수 있다.
- 두 클래스 모두 버퍼 기능을 활용하여 구현한다.
- StringBuffer는 threadsafe하고
- StringBuffer는 ThreadSafe하지 않다.
- 추가로 String의 더하기 연산을 할 경우 자바에서 컴파일시에 자동으로 해당 연산을 StringBuilder로 변환해 준다.
  - ***그러나 for loop 과 같이 반복연산시에 자동으로 변환을 해주지 않으므로 꼭 필요하다.
- 만약 String + StringBuidler로 매개변수를 받는다면 CharSequence(다형성)으로 받는 것이 좋다.
- StringBUilder == 하나의 메소드 내에서 문자열을 생성하고 더할때
- 어떤 클래스에 문자열을 생성하여 더하기 위한 문자열을 처리하기 위한 인스턴스 변수가 선언 되었고, 여러 쓰레드에서 이 변수를 동시에 접근하는 일이 잇을 경우에는 StringBuffer를 사용한다.

### 챕터 요약
1. String 은 final 클래스이다.
2. String 클래스는 comparable, serializable, charsequence를 구현한다.
4. String.tobytes() 메소드는 String 값을 바이트로 변경
5. String 문자열의 메소드를 호출하기전에 인코딩을 확인한다.
6. String.length 로 문자열의 길이를 확인한다.
7. String의 equals메소드와 compareTo 의 차이점은 리턴타입이다. boolean & int
8. 서울시로 시작되는 문자열인지 확인하려면 indexOf, 또는 startswith 활용한다.
9. indexOf로 특정 단어의 위치를 찾는다. 존재하지 않으면 -1를, 존재한다면 index 값을 반환한다.
11. 문자열의 일부 추출을 위해서는 substring메소드를 활용한다.
12. 모든 문자열의 공백을 *로 변환하려고하면 ``` value.replaceAll(" ", "*") "``` 메소드를 활용할 수 있다.
13. String의 단점을 보완하기 위해 나온것이 StringBuffer && StringBuilder
14. StringBuffer 와 StringBuilder 를 활용하기 위해서는 .append를 사용한다.



<br />

-------------

<br />

-------------

<br />

## 16장 : 클래스 안에 클래스가 들어갈 수도 있구나

### nested class : 클래스 안에 클래스
- static 선언 여부에 따라
  - static nested class
  - inner nested class

### 사용 이유
- 한곳에서만 사용되는 클래스를 논리적으로 묶어서 클래스를 처리하기위해
- A 클래스의 private 변수를 접근하기위한 B 클래스를 선언하고 B 클래스를외부에 노출시키고 싶지않을때
- 캡슐화가 필요할때 ( 내부구현을 감추기 )
- 소스의 가독성과 유지보수성을 높이고 싶을때
- nested static class는 static 변수만 참조 가능.
- nested inner class는 wrapper 클래스의 모든 변수 참조가능
- nested class의 선언 방식에 따라 static nested와 내부 클래스(익명, 일반내부)로 나뉜다.

### nested class

1. Nested 클래스에는 static nested class / 익명클래스 / 내부 클래스가 있다.
2. Nested 클래스를 컴파일하면 NestedClass 파일이름은 parent.$nested.class 가 된다.
3. static nested 클래스는 다른 Nested 와 다르게 상위클래스 생성을 할 필요가 없다.
4. static nested 클래스 예시 ```new UpperClass.SaticNexted()```
5. 일반적인 내부클래스의 객체 생성은 ```new UpperClass().NestedClass```
6. nested 클래스의 목적은 : 캡슐화, 논리적 묶음, 가독성, etc....
7. nested 클래스에서 upper class의 private 변수에 접근할수 있다.
8. 감싸고 있는 클래스에서 nested 클래스에 선언된 private로 선언된 변수에 접근할 수 없다.



<br />

-------------

<br />

-------------

<br />


## 17장 어노테이션이라는 것도 알아야한다.

### 어노테이션은
- 컴파일러에게 정보를 알려주거나
- 컴파일할때와 설치시에 작업으을 지정하거나
- 실행시 별도의 처리가 필요할때 사용한다.
- 메소드 클래스 변수 등 모든 요소에 선언가능
- 메타 어노테이션은 어노테이션을 선언하기위해 필요한 것이다.

### 자바의 기본 어노테이션
- 미리 정해져 있는 어노테이션들은 딱 3개뿐
- @override
  - 메소드의 매개변수가 부모와 다르면 에러다.ㄹ
- @deprecated
  - 컴파일시 경고 발생
  - javac -Xlint:deprecation
- @suppresswarnings.
  - @SuppressWarnings("deprecation")
  - 사용하지 말자/ 남용하면 위험하니

### 메타 어노테이션
- 어노테이션을 선언하기 위한 메타 어노테이션
- @Target(ElementType.Method)
  - 적용대상의 타입을 지정
    - type
    - CONSTRUCTOR : 생성자 선언시
    - FIELD : enum 상수를 포함한 필드 값 선언시
    - LOCAL_VARIABLE : 지역변수 선언시
    - METHOD : 메소드 선언시
    - PACKAGE : 패키지
    - PARAMETER : 매개변수
    - TYPE : 클래스 인터페이스 enum등 선언시
- @Rentenion(RetentionPolicy.RUNTIME)
  - SOURCE : 어노테이션정보가 컴파일시 사라짐
  - CLASS 클래스파일에 있는 어노테이션정보가 컴파일러에 의해서 참조 가능함, 하지만 VM 에서는 사라짐
  - RUNTIME 실행시 어노테이션 정보가 가상 머신에 의해서 참조가능
- @Documented
  - 해당 어노테이션에 대한 정보가 Javadocs 문서에 포함된다는 것을 선언한다.
- @Inherited
  - 자식클래스에서 부모클래스의 어노테이션을 사용가능하다는 것.

### 어노테이션은 상속이 되지 않는다.
- 용도에 따른 어노테이션들...
  - 제약사항 deprecated / override / notnull
  - 용도 / entity / testcase / webservice
  - 행위 / statefull / transaction
  - 처리 / column / xmlElement

> 어노테이션이전에는 XML 이나 properties 파일에 지정해왓따.
<br />

1. @Override 는 부모 클래스의 메소드를 오버라이드 할때 사용한다 (매개변수가 바뀌면 오버라이딩이 아니므로 에러)
2. @SupressWarning 은 javac에서 발생시키는 warning을 막는다.
3. @Deprecated 는 사용중단을 경고할때 사용한다.
4. 어노테이션을 선언할때 메타 어노테이션을 사용한다.
5. java.lang.annotation 패키지를 가져와서 메타 어노테이션 선언
6. @Target 어노테이션 적용대상
7. @Retention 어노테이션 유지정보, 컴파일 전 / 후 /VM 실행
8. @inherited 선언시 사용
9. 어노테이션 선언할 때에는 class 대신 @interface 예약어를 사용한다.



<br />

-------------

<br />

-------------

<br />

## 중간점검

- 참조 자료형과 기본자료형의 차이를 정리해 주세요
  - 초기화할 때 기본 자료형은 값을 바로 지정하지만 참조 자료형은 일반적으로 new와 생성자를 지정하여 객체를 생성한다.
  - 그리고 메소드를 호출할 때 매개변수에 기본 자료형, 참조 자료형 모두 값을 전달하지만 참조 자료형 안에 있는 변수들은 참조 주소를 전달
- 기본 자료형 8가지를 나열하고 각 타입의 특징을 정리해 주세요
  - byte short int long char는 정수형, double float는 실수형, boolean은 값에 따라 True, False로 나뉘는 기타로 분류할 수 있다.
- 형 변환이란 무엇이고 왜 해야 하나요?
  - 형 변환이란 자료형을 다른 타입으로 변환하는 작업이다.
  - 형 변환을 하지 않으면 값이 바뀔 수 있기 때문에 해야한다.
- if문의 용도는 무엇이며, if-else와 if-else if는 어떤 점이 다른지 정리해주세요
  - if문은 조건을 따지기 위해 사용한다.
  - if-else는 if문 조건 판단 후 결과가 false일 때 else문을 실행한다.
  - if-else if는 else뒤에 if문을 붙여 조건을 따질 수 있다
- switch-case 문의 용도를 정리해 주세요
  - 하나의 값이 여러 범위에 걸쳐서 비교되어야 할 때 자주 사용한다.
- for, do-while, while을 어떻게 사용하는지 1부터 10까지 더하는 코드로 예를 들어 정리해 주세요.
```
    // for문 
    int sum=0;
    for(int i=1;i<=10;i++){
        sum+=i;
    }

    // while문 
    int sum=0;
    int i=0;
    while(i<=10){
        sum+=i;
        i++;
    }

    // do-while문 
    int sum=0;
    int i=0;
    do{
        i++;
        sum+=i;
    }while(i<=10)
```
- 학생이라면 지금까지의 자신의 학점이나 등수를, 회사원이라면 지금까지의 고과를 String배열에 넣고 출력하는 코드를 작성해 주세요.
```
    String[] scores = [100,90,80,70,60];
    for(String s:scores){
        System.out.println(s);
    }
```
- 생성자는 무엇을 하는 데 사용되는 것이며, 별도로 만들지 않아도 자동으로 생성되는 생성자에 대해서 정리해 주세요.
  - 생성자는 객체를 초기화하기 위해 사용한다.
  - 별도의 생성자를 선언하지 않으면, 매개변수가 없는 생성자가 자동으로 생성된다.
- Overloading은 무엇인가요? public void setData(int a)라는 메소드를 원하시는 대로 Overloading 해주세요.
  - Overloading은 메소드 이름은 동일하지만 매개변수를 다르게 하는 것이다. 
  - 예를 들어 public void setData(int a)와 public void setData(int a,int b)
- 패키지를 선언하는 위치와 이름을 지정할 때의 유의점을 정리해 주세요.
  - 가장 첫 줄에 선언하고 package로 시작하여 하위 패키지로 내려갈 때마다 .을 표기한다.
  - 소문자로 작성하며 자바 예약어를 사용하면 안 된다.
- 다른 패키지에 선언된 클래스를 사용하기 위한 import는 어디 위치에 선언해야하며, staic import는 무엇인지 정리해 주세요.
  - 패키지 선언 아래 클래스 선언 위에 선언한다.
  - 다른 클래스에 선언되어 있는 static 변수나, static 메소드를 참조하려면 static import를 사용한다.
- 클래스란 무엇인가요? 다음의 단어들이 포함되는 문장을 작성하고, 주어진 단어의 의미도 같이 정리해 주세요(속성, 상태).
  - 클래스는 속성과 상태의 집합이다. 
  - 속성은 클래스나 인스턴스 변수로, 행위는 메소드로 표현할 수 있다.
- 인터페이스, abstract클래스, 클래스, Enum클래스의 각각의 특징 및 다른 점을 정리해주세요.
  - 인터페이스는 메소드 선언문만 있고 구현되어 있지 않다.
  - implements를 통해 확장할 수 있다.
  - abstract 클래스는 abstract 메소드가 1개 이상일 때 선언한다.
  - abstract메소드는 구현되어 있으면 안되고, 다른 메소드는 구현되어 있어도 된다.
  - 클래스는 객체를 위한 틀로 변수와 메소드로 이루어져 있다
  - Enum 클래스는 상수를 열거하기 위한 클래스이다.
- instanceof 라는 연산자의 용도를 정리해 주세요
  - 객체.instanceof(비교객체) 구조로 사용하며 객체와 비교객체 타입이 일치하는지 T/F로 반환한다.
  - 부모 타입도 T로 반환하기 때문에 가장 하위에 있는 자식 타입부터 확인해야 제대로 된 타입 확인이 가능하다.
- 어떤 클래스를 상속받아 확장을 하면, 부모 클래스의 어떤 것들을 사용할 수 있는지 정리해 주세요
  - public, protected로 선언된 변수와 메소드를 사용 가능하다
- 변수를 final로 선언하는 것이 어떤 의미가 있는지 정리해 주세요
  - 변수 생성과 동시에 값을 할당해야 하고 값을 변경할 수 없다.
- 클래스를 final로 선언하는 것이 어떤 의미가 있는지 정리해 주세요.
  - 더이상 확장해서는 안되는 클래스이다.
- 변수를 static으로 선언하는 것이 어떤 의미가 있는지 정리해 주세요.
  - 클래스가 처음 호출될 때 생명이 시작되고,자바 프로그램이 끝날 때 소멸된다.
  - 객체의 생성없이 바로 접근이 가능하다.
- 메소드를 static으로 선언하는 것이 어떤 의미가 있는지 정리해 주세요.
  - 객체의 생성 없이 호출이 가능하고 클래스 변수(static 변수)만 사용할 수 있다
- try-catch-finally 블록은 왜 사용하고 각각의 블록이 어떤 용도로 사용되는지 정리해 주세요
  - try : 예외가 발생할만한 구문을 블록 안에 묶는다
  - catch : 예외를 처리한다
  - finally : 예외가 발생하든 발생하지 않든 무조건 실행되는 블록


<br />

-------------

<br />

-------------

<br />

## 마치며...

저의 다른 자료들도 참고 바랍니다!

- 🌱 Blog (Medium) : [https://medium.com/@beanskobe](https://medium.com/@beanskobe)
- 🌱 Blog (티스토리) : [https://vince-kim.tistory.com/](https://vince-kim.tistory.com/)
- 📫 Portfolio (포트폴리오) : [https://romantic-golick-a520aa.netlify.app](https://romantic-golick-a520aa.netlify.app)
- 📫 Website (웹사이트) : [https://romantic-golick-a520aa.netlify.app](https://romantic-golick-a520aa.netlify.app)
- ✏️ LinkedIn (링크드인) : [https://www.linkedin.com/in/joo-hyuk-kim/](https://www.linkedin.com/in/joo-hyuk-kim/)
- 🌎 Contact me : [beanskobe@gmail.com](mailto:beanskobe@gmail.com)

읽어주셔서 감사합니다!
