## Openbook
IT 개발자 기술 면접 준비를 위한 오픈북 iOS 앱

- 팀원
    - 1인 개발
- 진행 기간
    - 개발: 2024.05.15 ~ 진행중
<br/>

## 개발 환경 및 기술
- 개발 환경
    - Swift 5, xcode 15.0
    - 라이트모드 지원 (다크모드, 가로모드 미지원)
- Deployment Target
    - iOS 15.0
    - Widget 17.0
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
- 질문을 랜덤으로 보거나, 카테고리 별로 볼 수 있습니다.
- 위젯을 통해 랜덤 질문을 볼 수 있습니다.

|`홈`|`카테고리`|`디테일`|
|:----:|:----:|:----:|
| <img src="https://github.com/yunjikimm/Openbook/assets/68881093/998f161c-211f-49b7-a935-d1f2f5fc90ee" width="200"> | <img src="https://github.com/yunjikimm/Openbook/assets/68881093/a786a4fc-5e7a-4bc3-bb81-cf67f53cd811" width="200"> | <img src="https://github.com/yunjikimm/Openbook/assets/68881093/2c5538eb-c29f-4cc9-9970-84b649cc4c07" width="200"> |

|`위젯`|
|:----:|
| <img src="https://github.com/yunjikimm/Openbook/assets/68881093/6617b166-2708-4f48-a258-80bfc5bf23bb" width="200"> |!
