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

UITextViewDelegate에서 텍스트를 눌렀을 때 호출되는 순서는 
textViewDidBegingEditing -> textViewDidChangeSelection이고 
누른 텍스트의 위치는 textViewDidChangeSelection에서 반영된다.
따라서 textViewDidBegingEditing에서 selectedRange를 변경하면 안된다. 
