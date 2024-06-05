## Openbook
IT 개발자 기술 면접 준비를 위한 오픈북 iOS 앱

- 팀원
    - 1인 개발
- 진행 기간
    - 개발: 2024.05.15 ~ 2024.05.31
    - 배포: 2024.06.05 ([앱스토어](https://apps.apple.com/kr/app/%EC%98%A4%ED%94%88%EB%B6%81/id6503224253))
<br/>

## 개발 환경 및 기술
- 개발 환경
    - Swift 5, xcode 15.0
    - 라이트모드 지원 (다크모드, 가로모드 미지원)
- Deployment Target
    - iOS 16.0
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

|`랜덤질문 탭`|`학습 탭`|
|:----:|:----:|
| <img src="https://github.com/yunjikimm/Openbook/assets/68881093/0f0951c4-c09f-4356-8cf3-50209f89e54b" width="200"> | <img src="https://github.com/yunjikimm/Openbook/assets/68881093/ba325d3c-5d24-40a1-8594-5dd99f3cad06" width="200"> |

|`카테고리`|`디테일`|
|:----:|:----:|
| <img src="https://github.com/yunjikimm/Openbook/assets/68881093/451af52e-711a-4a5b-b469-abb316c6d03a" width="200"> | <img src="https://github.com/yunjikimm/Openbook/assets/68881093/a50a67fc-d5bb-42b4-ae23-d7452b66d8dd" width="200"> |

|`위젯`|
|:----:|
| <img src="https://github.com/yunjikimm/Openbook/assets/68881093/6617b166-2708-4f48-a258-80bfc5bf23bb" width="200"> |
