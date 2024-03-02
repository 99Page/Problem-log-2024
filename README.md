해# TIL 

## Februry 

### 02. 20 Tue 

퇴근 후 한시간씩 공부하는 것은 내 지금 일정에서 지키기 어려운 일이다.
안될 계획을 세우고 기분따라 하는 것 보다는 지킬 수 있는 일정을 매일 반복하는 게 낫다고 생각한다. 
매일 20분씩 공부하는 것으로 난도를 낮추자.
대신 그 날 할 공부를 미리 계획해두고 
딴 짓 없는 20분을 보내자. 

지금 업무에서 내가 가장 부족한 부분은 
재활용성이 높고 클린 코드가 잘 지켜진 뷰 만들기인 것 같다. 

내 판단에는 아래 두가지 일 중 하나를 하는 게 좋아보인다. 

1. 회사에서 작성한 내 코드 리뷰 및 리팩토링
2. 다른 서비스 앱들 클론코딩하기(기능없이 디자인 위주로)

어떤 것을 하는게 나을지 사수분들에게 여쭤보자. 

### 02. 21 Wed 

* UITextViewDelegate에서 텍스트를 눌렀을 때 호출되는 순서는 
  textViewDidBegingEditing -> textViewDidChangeSelection이고 

  누른 텍스트의 위치는 textViewDidChangeSelection에서 반영된다.

  따라서 textViewDidBegingEditing에서 selectedRange를 변경하면 안된다. 

* 특정 상황에서는 불필요한 case가 있어도 
  이를 허용하고 
  enum 타입의 수를 줄이는 편이 
  Single source of truth 및 코드 재사용에서 이점이 크다. 
  대부분의 상황에서 가장 중요하게 판단해야할 것은 재사용성인 것 같다. 


* 뷰를 만들 때 사용자는 어떤 값을 넣기를 원하는지 
  NavigationPath를 만들 때 사용자가 어떤 값을 넣기를 원하는지 판단해보자.

  사용자가 사용하기 쉬운 코드를 만들어야한다. 
 

* 기능을 구현할 때 Bottom up으로 접근하면 최종 결과물이 더러워진다. 

  큰 구현 사항을 먼저 나누고 Divide & Conquer, Top down 방식으로 접근하자. 

  더 자세히 생각해보자.

  현재 구현하고 있는 것은 텍스트 에디터다. 최초에 구현했을 때는 설계부터 시작했다. 

  그런데 TextKit을 써야할 경우가 생겼고 사용해본 적이 없던거라 R&D하면서 기능을 하나씩 붙였다. 위에서 말한대로 최종 결과물이 더러워졌다.

  그럼 다음부터는 어떻게 해야하는가? 3단게 과정으로 나눠보자. 

  1. 요구사항을 정의한다.

  2. 요구사항에서 공통된 기능을 뽑아내 설계한다. (Bottom-up)

  3. 설계된 것에서 하나씩 구현한다. (Top-down)

  그리고 요구사항이 추가되면 3에서 시작할 것이 아니라 다시 1부터 시작하자. 

  1번부터 시작해서 3번으로 잘 끝낸 코드도 기능을 하나씩 넣으면서 더러워지는 경우가 매우 많았다. 

--- 
### 02. 22 Thu 

* 요구사항으로 설계를 할 때 Flow와 Condition을 고려하자.
* 예외 조건이 많아질수록 스파게티 코드가 된다. 최대한 정해를 찾아서 문제를 풀고, 거기에 시간을 쏟는 일은 나쁜게 아니다. 당장의 버그를 덮기위한 간단한 해결 방법은 소프트웨어의 복잡성을 높힌다. 

### 02. 23 Fri 

* 소비자(getter), 생산자(setter)를 하는 뷰의 거리가 멀면 디버깅하기가 어렵다. 뷰 계층에서 이 둘을 최대한 가깝게 설계하자. 

--- 

### 02. 24 Sat 

* Decodable 타입의 프로퍼티는 모두 optional로 하는 편이 안정성 측면에서 좋다. 

### 02.25 Sun 

* 각 뷰에 필요한 데이터를 크게 보여줄 데이터(메타 데이터 포함)-요청 데이터(DB나 API) 두가지가 있다.
* 요청 데이터는 배제하고 뷰를 설계해보자. 그게 뷰의 복잡성을 줄여준다고 본다.
* ObservableObject도 @State, @Bindable 같은 프로퍼티 래퍼 사용할 수 있다.
* iOS 17로 넘어오면서 model in model 구조를 사용하기 편리해졌다(기존에는 뷰모델 내부에 뷰모델을 넣는 구조는 뷰를 렌더링 시키지 않아 사용성이 나빴다.)
* 하위 뷰는 상위 뷰의 정보를 모르도록 상태를 배치
* 정적은 정보는 주입받고, 동적은 정부는 내부에서 선언된다. 정적인 정보를 최대한 줄이자.

### 02.26 Mon 

* 외부에서 주입된 것을 통해 @Observable이 optional해지는 경우는 State를 사용하면 안된다.
* 앞으로 기록을 할 때는 문제-해결 구조로 작성하자. 회사에서 계속 지적 받았던 것에 개발에 집중하지 않고 기술에 집중한다는 것인데
* 고쳤다고 생각했는데 다른 사람이 보기에는 전혀 그렇지 않았나보다.
* 개발에 집중하기 위해, 문제를 적고 여기에 온 신경을 다쓰자

* 문제: 기술에 집착하는 평가
* 해결: R&D, 개발할 때 문제를 명확히 정의하고 여기에 집중하기.

### 02.27 Tue 

* 문제: 텍스트 뷰의 기능을 변경했을 때 기존에 있던 다른 기능에 이상이 생김
* 해결: 텍스트 편집의 모든 시나리오를 작성하고, UITest 자동화 필요


* 문제: 개발의 속도를 느리게 하는 것은 예외 처리였고, 어떤 예외 처리가 필요한 지 코드가 흩어져 있어서 파악이 어려웠음
* 해결: 특정 개발 범위의 예외 처리를 담당하는 타입을 만들어서 어떤 예외들이 있는지 확인하기 쉽게 만듬. 

### 02.29 Thu 

* 문제: 체크박스의 위치를 구하려면, UITextView 내부에 있는 UITextLayoutFragmentView의 minY를 구해야되는데 텍스트 입력 직후 구할 수 없다.
* R&D: 텍스트 입력 -> UITextViewDelegate.textDidChange() -> UIView.addSubview() -> UIViewRepresentable.updateUIView() -> onChageOf -> textViewportLayoutControllerDidLayout() 순으로 호출되는데

  minY 값을 구할 수 있는 건 마지막 함수 호출 지점.
  textViewportLayoutControllerDidLayout()를 커스텀하게 만드는 것은 불가능했다.
* 해결: 텍스트가 입력되면 타이머를 동작시켜서 계속 minY 값을 가져온다. 귀납적으로, 2번 연속 같은 값이면 제대로 가져온 값이다.

### 03.02 Sat

* 문제: 뷰를 분할하고 각 뷰는 필요한 타입만 알도록 설계하니 객체지향적이지 않은 코드가 됐다.
* 해결: 이해할 수 있는 단위로 모델을 설계하고 뷰를 모델에 의존시키자. 