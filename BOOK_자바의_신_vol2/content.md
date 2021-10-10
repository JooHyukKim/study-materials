## 27장 : Serializable 과 NIO 도 살펴 봅시다


### Serializable 
- 다른 서버로 보내거나 받을 수 있도록 하려면 반드시 이 인터페이스를 구현해야만 한다.
- Serializable interface를 구현하면 JVM 에서 해당 객체는 저장하거나 다른 서버로 전송할 수 잇도록 해준다.
- serializationVersionUID = 1L
    - 객체의 버전을 관리한다고 생각하고 통신을 주고 받는 각 서버가 같은 UID를 가지고 있는지를 체크해야되니까....
- transient == serializable 대상에서 제외된다. ex) 패스워드와 같은 것에 사용이됨.

### Java NIO
- 자바니오가 생긴이유는 속도 때문.
- NIO는
    - 채널과
    - 버퍼를 사용한다.

<br />

-------------

<br />

-------------

<br />

## 28장

### 네트워크 프로그래밍이란?

자바에서 활용하는 대표적인 어플리케이션 레이어
- HTTP
- FTP
- Telnet
- 등은 모두 TCP 통신을 한다. 만약 tcp 사용시에는 자바에서 제공하는 api 를 사용하면 된다.

### TCP
- TCP 통신은 연결기반 프로토콜이라고 한다.
- 즉, 상대방이 데이터를 받았는지를 확실히 보장할 수 있다.

### UDP
- UDP 와 TCP 는 같은 레이어
- UDP 는 수신 보장이안됨.
- 대신 TCP는 무겁다.

### 포트번호
- 일반적인 웹어플리케이션 은 80번을 사용한다.
- SSL 443 을 사용한다.
- TCP 를 사용하기 위해서는 socket클래스를 사용한다. java.net 패키지.
- socket클래스는 보통 데이터를 보내는 쪽에서 객체를 생성하여 사용한다.
- 서버는 요청을 받으면 요총에 대한 객체를 생성하여 데이터를 처리한다.
- 즉, 이 socket 클래스는 서버쪽이 되었든 클라이언트 쪽이 되었든 원격에 있는 장비와의 연결상태를 보관하고 있다고 생각하면 된다.



### UDP : datagram 관련 클래스

- UDP 는 TCP 와 달리 데이터가 제대로 전달되었다는 보장을 하지 않는다.
    - 그래서 (매우 작은 양의) 데이터 유실을감안해야한다.
- TCP 와는 달리 클래스하나에서 보내는 역할과 받는 역할을 모두 수행가능하다.
- TCP 에서는 스트림 객체를 얻어 데이터를 주거나 받았지만 UDP 통신을 할 때에는 스트림을 사용하지 않고 DatagramPacket이라는 클래스를 사용한다.
- UDP 통신할때에는 DatagramPacket 이라는 클래스를 사용한다.
- UDP 로 통신할 때에는 서버에서 데이터를 받을 준비가 되어있지 않더라도 아무런 오류를 내지 않고 그냥 수행하도록 되어있다.
    - 이와는 반대로 TCP 의 경우에는 서버에 접속하지 못하면
    - java.net.ConnecitonException : connection refused : connect과 같이 ConnectionException 이 발생한다.
- 자바에서 웹페이지 요청은 자바의 URL API 를 사용해서 간단한 요청은 처리가능하지만, 상세한 설정을 할 수 없기 때문에 Apache 의 Http Components 를 많이 사용한다.
    - 이 라이브러리를 사용하는 자세한 방법은 인터넷에서 조금만 검색해도 많은 자료를 얻을 수 있으니, 구글에서 검색해보라.

<br />

-------------

<br />

-------------

<br />

### 29장 : 이제 주요 API도 알아봤으니 정리해 봅시다

- 파일이나 네트워크로 데이터를 읽고 쓰는 것을 통틀어 IO 라고 한다.
- 그래서 파일에 쓸때에는 File IO 네트워크를 처리할 때에는 Network IO라고 한다.

### IO 의 기본은 Stream
- java 프로그램에서 데이터를 읽을 때에는 Inputstream 을 사용한다.
- 자바 프로그램에서 밖으로 데이터를 쓸 때에는 OutputStream 을 사용한다.
- char 기반의 데이터를 읽을 때엔느 Reader, 쓸 때에는 writer 를 사용한다.

<br />

-------------

<br />

-------------

<br />

### ForkJoin
- ForkJoin 기능은 java.util.concurrent 패키지의 RecursiveAction 또는 RecursiveTask 라는 abstract 클래스를 사용해야 한다.

```
public abstract class ForkJoinTask<V> extends Object implments Future<V>, Serializable

public abstract class RecurisveAction extends forkJoinTask<Void> 

public abstract class RecursiveTask<V> extends forkJoinTask<V>
```

- RecursiveTask == Generic / 결과리턴
- RecurSiveTask == NOT Generic / void
- for loop는 하나의 쓰레드로 실행되므로 1개의 CPU 만 사용할 수 밖에 없다.
- ForkJoin은 복잡한 연산을 여러 쓰레드에서 실행하기 위해 만든 것이다.

### NIO2
- NIO2 는 java.io.File 클래스의 미흡한 부분을 보완하는 내용이 많이 포함되어잇다.
- 파일의 속성을 다를 수 있으며
- 심볼릭 링크까지 처리할 수 있는 기능을 제공한다.
- 어떤 파일이 변경되어 있는지를 쉽게 확인할 수 있는 WatchService 라는 클래스도 제공한다.

### NIO2 에서 File 클래스를 대체하는 클래스들.
- Paths
    - static 한 get 메소드를 사용하면 Path 라는 인터페이스는 파일과 경로에 대한 정보를 갖고 있다.
- Files
    - 기존 File 클래스에서 제공되던 클래스의 단점들을 보완한 클래스다.
    - 매우 많은 메소드들을 제공하며, Path 객체를 사용하여 파일을 통제하는데 사용된다.
- FileSystems
    - 현재 사용중인 파일 시스템에 대한 정보를 처리하는데 필요한 메소드를 제공한다.


---
---
---



## 기말고사

1. String, StringBuilder, StringBuffer 차이는
    1. String은 값이 변결될때마다 새로운 주소를 할당 받는다.
    2. StringBuilder or StringBuffer 를 사용해서 값을 쌓아두고 한번에 업데이트 하는데
    3. 스트링버퍼는 쓰레드 세이프, 빌더는 쓰레드 세이프 하지 않다. 
2.
    1. ```String.indexOf(String n)``` 리턴 값으로 int 타입의 문자열의 인덱스 위치 또는 못 찾으면 -1을 반환.
    2. ```String.equals(E e)``` 값을 비교 후 같으면 true 를 반환받는 아이템의 위치를 리턴한다.
    2. substring(int idx, int? idx) string 값의 일부를 반환한다.
    4. getBytes() 문자열을 byte[] 반환한다.
3. System 클래스
    1. 시스템 클래스는 호스트머신의 운영체제에 접근하기 위해 사용된다.
    2. 접근하는 값system properties, 메모리
4. System 클래스에서 절대 사용함ㄴ 안되는 메소드들은
    1. gc (가비지 콜렉션 실행)
    2. runFinalization 과 같이 운영체제에서 무엇인가를 조작/실행시키는 것의 사용은 절대 하면안된다.
5. 제네릭의 용도는
    1. 클래스 내부에서 사용할 데이터 타입을 외부에서 지정해줄때 사용한다.
    2. 제네릭스는 다양한 타입의 객체들을 다루는 메서드나 컬렉션 클래스에 컴파일시의 타입을 체크해주는 기능이다.
    3. <? extends Parent> 와 같이 범위의 제한을 둘수 있다.
6. Generics 는 다양한 타입의 객체들을 다루는 메서드나 컬렉션 클래스에 컴파일 시의 타입체크를 해주는 기능이다. - 자바의 정석
7. Set 은 순서가 필요하지 않은 배열을 다룰때, HashSet, TreeSet
8. Set 에서 데이터를 하나씩 꺼내려면 iterator() 를 사용해야한다.
9. arraylist 를 포함한 List 와 배열의 차이는 확장가능 여부이다.
10. Queue 용도는 FIFO 순서로 내부 객체들을 내보낼대 사용된다. LinkedList 는 List 와 Queue 두개의 구현체다
11. Map 은 키와 값으로 이루어진 배열을 HashMap, HashTable, TreeMap 다.
12. Arrays 클래스의 주요 용도는 배열의 순서를 다루기 위해서이다.
13. StringTokenizer 는 문자열을 token 단위로 쪼갤때 사용된다.
14. Thread 클래스를 확장한 클래스를 구현할때
15. public void run();
16. synchronized 는 threadsafe 한, 동시접근이 불가능한 메소드 또는 코드 블럭을 위해서이다.
17. InputStream 클래스는 socket 을 연결이후 데이터를 받는 receive 메소드를 호출하고 데이터 입력받을 시에 stream 을 리턴받아 데이터를 받는다.
    1. char 기반의 데이터를 읽을때에는 Reader Writer 를 사용한다.
18. 자바프로그램 밖으로 안으로 데이터를 주고 받을때 필요하다.
19. Transient 로 선언한 변수는 serializable 의 대상이 되지 않는다.
20. TCP 통신을 처리하기 위해서는 ServerSocket 과 Socket 을 사용한다.
21. UDP 통신을 처리하기 위해서 DatagramSocket 을 사용한다.
22. Fork/Join 은 cpu 를 더쉽게 효율적으로 사용하기 위해 만들어진것.
23. Fork Join 은 여러개로 나누어 계산한 후 결과를 모으는 작업
24. 여기에는 단순하게 작업을 쪼개고 그 결과를 받는 단순한 작업만을 포함하지 않는다.
25. Work stealing 이라는 개념이 포함되어있다.
26. deque 에서 여러 작업이 대기하고 있다면, 다른 deque 가 쓰레드가 처리하고 있는 deque 의 반대편의 일을 가져가서 해주는 것이다.
27. CPU 가 많이 있는 장비에서 계산 위주의 작업을 매우 빠르게 해야 할 필요가 잇을 때 매우 유용하게 사용될 수 있다.
28. 이러한 식으로 Fork/Join 이 실행되기 때문에 보통 이 연산은 회귀적으로 (Recursive 하게) 수행될 때 많이 사용된다.
29. 여기서 회귀적이라는 말은 자신의 메소드를 자신이 부른 경우를 말한다.


<br />

-------------

<br />

-------------

<br />

## 32장 : Java 8 에 추가된 것들은?

### Optional  
- get 메소드 가장 많이 사용되며 데이터가 없을 경우에는 null 이 리턴된다.
- 만약 값이 없을 경우에는 orElse 메소드를 사용하여 기본값을 지정할 수 있다.
- Supplier<T> 라는 인터페이스를 활용하는 방법으로 orElseGet() 메소드를 사용할 수 있다.
- 만약 데이터가 없을 경우에 예외를 발생시키고 싶다면, orElseThrow() 메소드를 사용한다.
    - 여기서 Exception 도 Supplier<T>메소드를 활용한다.
- Optional 은 nullPointerException 을 발생시킬 수 있는 것을 간편하게 처리한다.
- 단 Optional 클래스에 값을 잘못 넣으면 NoSuchElementException 이 발생할 수도 잇으니 유의해서 사용해야만 한다.
- 인터페이스에 구현부가 생겼다.
    - default == 인터페이스에서 구현되는 부분
    - 구현클래스에서의 혼동을 막기위해 사용된다. ``` Clazz implmenets DefaultInterface ``` 하면 default 메소드는 바로 사용가능.

### Arrays
배열에서 알아두면 좋을 static 메소드들
- Arrays.
- binarySearch()
- copyOf()
- equals()
- fill()
- hashcode
- sort
- toString
- parallelSort()
    - sort와 같은 목적이지만 차이점으로는 ForkJoin 프레임워크가 내부적으로 사용되며 보통 5000개 이상의 배열을 정렬할때 성능이 더 좋음.
    
### StringJoiner
- joiner().add(delimiter, ?prefix, ?suffix)
- 이건 그냥 예제와 매개변수 명칭만 봐도 알듯...
```java

StringJoiner joiner = new StringJoiner("-", "[", "]");
String[] arr = new String[]{"my", "name", "is"};
for (String a : arr) {
    joiner.add(a);
}
System.out.println(joiner)
        
>>> [my-name-is] 
```

### Lambda
java.util.function 패키지

- predicate
    - test라는 메소드가 잇으며 , 두 객체를 비교할때 사용하고 boolean 을 리턴한다.
    - 추가로 and(), negate(), or()이라는 default 메소드가 구현되어잇으며, isEqual 이라는 static 메소드도 존재한다.
- supplier
    - get() 메소드가 있으며 리턴값은 generic으로 선언된 타입을 리턴한다. 다른 인터페이스들과는 다르게 추가적인 메소드는 선언되어 있지 않다.
- consumer
    - accept()라는 매게 변수를 하나 갖는 메소드가 있으며 리턴값이 없다.
    - 그래서 출력을 할 때 처럼 작업을 수행하고 결과를 받을 일이 없을때 사용한다. 
    - 추가로 andThen()이라는 default 메소드가 구현되었는데 순차적인 작업을 할 때 유용하게 사용될 수 있다.
- funciton
    - apply() 라는 리턴값이 있는 하나의 매개변수를 갖는 메소드가 있으며 리턴 값도 존재한다.
    - 인터페이스는 Generic타입으로 앞에 입력 뒤 리턴타입을 의미한다. 즉 변화를 할 필요가 잇을 대 이 리턴타입을 사용한다.
- unaryOperator
    - apply() 라는 하나의 매개변수를 갖는 메소드가 잇으며 리턴값도 존재한다.
    - 단, 한가지 타입에 대하여 결과도 같는 타입일 경우 사용한다.
- BinaryOperator


### Stream

- 연속된 정보를 처리하는데 사용.
- 배열, 컬렉션, 등....
- 스트림의 구조
    - 스트림생성
    - 중개연산
    - 중단연산
- stream은 순차적으로 데이터를 처리한다. 10개의 데이터가 있따면 0~9번째 데이터를 처음부터 하나씩 처리한다.
- 빠르게 처리하려면 parallelStream을 사용하면 되는데, 이는 병렬로 처리하기때문에 CPU도 많이 사용되고 몇개의 쓰레드로 처리할지 모른다.
- 많이 쓰이는 stream 메소드들
    - filter
    - map
    - forEach
    - flatMap
    - sorted
    - toArray
    - any  all nonMatch
    - findFirst any
    - cunumulate
    - collect

### 메소드참조
:: 로 사용됨
- 예를들어 static 메소드 참조를 한다면 Collectiosn::collect ???
- 특정 객체의 인스턴스 메소드 참조 containingObject::instanceMethodName
- 특정 유형의 임의의 객체에 대한 인스턴스 메소드 참조 ContainingType::methodName
- 생성자 참조 ClassName::new

