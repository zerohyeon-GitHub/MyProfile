# 📱 My Profile
### 개인 과제 심화
<br><br>

## 📋 프로젝트 소개

#### MyProfile App은 UI를 따라 구현해보고 Core Data를 사용하여 데이터를 저장하는 것을 
#### 1. UI 구현 페이지
#### 2. MVVM을 이용하여 데이터 표시
#### 3. Core Data를 이용하여 데이터 저장 및 표시

<br><br>
- - -
## 🛠️ 사용한 기술 스택 (Tech Stack)
<img src="https://img.shields.io/badge/Swift-F05138?style=for-the-badge&logo=Swift&logoColor=white">
<img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white">
<img src="https://img.shields.io/badge/Slack-4A154B?style=for-the-badge&logo=figma&logoColor=white">
- - -

<br><br>
- - -
## 🗓️ 개발 기간
* 2023-09-18(월) ~ 2023-09-22(금), 5일간
- - -
<br><br>

## 📌 화면 별 설명
* 		시작 화면
    * 각각의 화면으로 이동하는 화면입니다.
    * 'MainViewController'과 'MainView'로 파일을 각각 나누었습니다.
    * present를 사용하여 화면을 이동합니다.
    * ![Simulator Screenshot - iPhone 14 Pro - 2023-09-22 at 12 33 25](https://github.com/zerohyeon-GitHub/MyProfile/assets/75235447/65aa9c69-dd6b-4775-981f-3cb6fad1e0fc)
* 		UI 화면
    * Tabar를 이용하여 'Home', 'Shorts', 'Profile' ViewController을 각각 생성하였습니다.
    * 시작 화면은 'Profile'로 임의로 설정하였습니다.
    * CollectionView를 사용하는 것에 의의를 두고 개발하였습니다.
    * 'ProfileView'와 'ProfileViewController'로 파일을 나누었으며, CollectionView를 위하여 'GalleryCollectionViewCell' 파일을 생성하였습니다.
    * 추가적으로 진행을 해볼 기능
        1. UISegmentedControl을 사용하여 CollectionView와 TableView를 각각 슬라이딩을 하여 표시
        2. 다른 탭바의 화면도 추가적으로 구현!
    *![Simulator Screenshot - iPhone 14 Pro - 2023-09-22 at 12 37 17](https://github.com/zerohyeon-GitHub/MyProfile/assets/75235447/c8bd42b7-c13f-4419-a215-096f3c76f2b9)
* 		MVVM 화면
    * MVVM을 이용하여 이름과 나이를 표시하는 화면입니다.
    * Model: 'UserInfo'
    * View: 'MVVMView', 'MVVMViewController'
    * ViewModel: 'MVVMViewModl'
    * Model에서 생성한 UserInfo 구조체를 ViewModel로 가져와서 View에서 표시해주는 것으로 구현하였습니다.
    * ![Simulator Screenshot - iPhone 14 Pro - 2023-09-22 at 12 42 02](https://github.com/zerohyeon-GitHub/MyProfile/assets/75235447/68d419b4-4d5c-4f37-998d-297fd3a9fcb4)
* 		CoreData 화면
    * Core Data에 데이터를 저장하고, 그 데이터를 표시하는 화면입니다.
    * Model: 'UserInfo', 'DataManager'
    * View: 'UserInfoView', 'UserInfoViewController'
    * ViewModel: 'UserInfoViewModl'
    * 초기 목표 : DataManger에 CoreData에 저장하는 기능들을 구현. 이를 'UserInfoViewModel'에 가져와서 해당 함수들을 'UserInfoViewConroller'에서 실행.
    * 현재 상황 : ViewModel에서 CoreData를 다루는 함수들을 가져왔을 때 실행하지 않았음. -> ViewController에서 직접적으로 'DataManager'에 접근하여 CoreData저장 및 읽어오기 기능 구현
    * 스스로의 피드백
        1. Model과 ViewModel간의 개념이 불확실하게 잡힌 것 같습니다.
        2. CoreData 중 relationship에 대한 부분은 더 파악이 필요하다고 생각됩니다.
    * ![Simulator Screenshot - iPhone 14 Pro - 2023-09-22 at 12 46 00](https://github.com/zerohyeon-GitHub/MyProfile/assets/75235447/416bfd23-4e40-470e-a1d7-61086c17f9b8)
    * ![스크린샷 2023-09-22 오후 12 46 27](https://github.com/zerohyeon-GitHub/MyProfile/assets/75235447/02fe1904-04c9-461f-a4df-e35fcaf5197b)
    * ![스크린샷 2023-09-22 오후 12 46 35](https://github.com/zerohyeon-GitHub/MyProfile/assets/75235447/2b89467c-aa71-426a-8b55-8dcf43414e83)
  <br><br>
  - - -
  
