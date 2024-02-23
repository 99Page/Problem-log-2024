# TIL 

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


