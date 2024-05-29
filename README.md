## Openbook
개발자 기술 면접 준비를 위한 오픈북 iOS 앱

- 팀원
    - 1인 개발
- 진행 기간
    - 개발: 2024.05.15 ~ 진행중
<br/>

## 개발 환경 및 기술
- 개발 환경
    - Swift 5, xcode 15.0
    - 라이트모드 지원(다크모드 미지원), 가로모드 미지원
- Deployment Target
    - iOS 15.0
- 라이브러리
    - Firebase
<br/>

## 아키텍처
<img src="https://github.com/yunjikimm/Openbook/assets/68881093/2a3ced98-5381-4db7-9818-2bfdec79c682"><br/>

- MVVM + Clean Architecture
    - UI를 담당하는 View와 UI를 위한 로직 처리를 담당하는 ViewModel 구분
    - 도메인 비즈니스 규칙에 집중하기 위해 클린 아키텍처 도입

<br/>

## 주요 화면 및 기능
질문을 랜덤으로 보거나, 카테고리 별로 볼 수 있습니다.
|`홈`|
|:----:|
| <img src="https://github.com/yunjikimm/Openbook/assets/68881093/352c7db3-b3d3-4d46-9e8e-249fa097d429" width="200"> |


|`카테고리`|`질문 디테일`|
|:----:|:----:|
| <img src="https://github.com/yunjikimm/Openbook/assets/68881093/dc1a5ce0-bf43-4ab7-927f-5dd7437c173d" width="200"> | <img src="https://github.com/yunjikimm/Openbook/assets/68881093/7081ea88-619a-4b9e-9852-9b5fa3a059d0" width="200"> |
