# 옵시디언 자동 Git 연동 시도 기록

## 시도 개요
- **목적**: 로컬 옵시디언(Obsidian) 메모를 GitHub 저장소(https://github.com/yuriuser126/obsidian-auto-sync.git)와 자동 동기화하여 언제 어디서나 최신 노트 접근 가능하도록 구현 시도
- **주요 개발 언어 및 도구**:  
  - Git (버전 관리)  
  - 배치 스크립트(Batch script) (자동화용)  
  - Windows 작업 스케줄러 (자동 실행 환경)  
  - 옵시디언 Git 플러그인 (Obsidian 내부 Git 연동)  
- **환경**: 권한 제한이 있는 학원 PC (Windows OS)

## 진행 내용
- Git 및 배치 스크립트 기반 자동 커밋/푸시 환경 구축 시도  
- 옵시디언 Git 플러그인 설치 및 기본 설정 완료  
- GitHub 저장소와 로컬 옵시디언 작업 폴더 연동 및 초기 커밋/푸시 성공  
- 배치 파일(`auto_push.bat`) 작성하여 변경사항 자동 커밋 및 푸시 스크립트 구현  
- Windows 작업 스케줄러에 예약 작업 등록 시 사용자 권한 제한으로 인해 자동 실행 실패  

## 결과 및 현황 평가
- 권한 제한 및 보안 정책으로 인해 작업 스케줄러 자동화 실패  
- 자동화가 불가능한 환경에서는 수동으로 커밋 및 푸시 진행 중  
- 개발환경 권한 확보가 중요하며, 개인 PC 혹은 권한이 자유로운 환경에서 재설정 권장  

## 향후 계획 및 개선 방향
- 개인 PC 환경에서 Windows 작업 스케줄러 혹은 PowerShell 스크립트 기반 자동화 재구성  
- GitHub Actions 등 클라우드 기반 CI/CD 도구 활용 가능성 검토  
- 자동화 스크립트의 보안 강화 및 로그 관리 추가  

<details>
<summary>📋 진행 방법 단계별 안내 (클릭해서 펼치기)</summary>

1. **GitHub 저장소 생성**  
   - https://github.com/yuriuser126/obsidian-auto-sync.git 생성 및 공개/비공개 설정  

2. **로컬 Git 초기화 및 클론**  
   - CMD에서 저장소 클론:  
     `git clone https://github.com/yuriuser126/obsidian-auto-sync.git`  
   - 옵시디언 작업 폴더를 클론한 경로로 지정하거나 작업 폴더를 복사  

3. **옵시디언 Git 플러그인 설치 및 설정**  
   - 옵시디언 커뮤니티 플러그인 메뉴에서 ‘Obsidian Git’ 설치  
   - 사용자 이름, 이메일, 커밋 메시지 자동화 설정  

4. **초기 커밋 및 푸시 수행**  
   - 옵시디언 내 변경사항을 커밋하고 GitHub에 푸시가 정상적으로 작동하는지 확인  

5. **자동 커밋/푸시용 배치 스크립트 작성**  
   - 예: `auto_push.bat` 파일 내용  
     ```
     cd "C:\path\to\obsidian\vault"
     git add .
     git commit -m "Auto commit from Obsidian"
     git push origin main
     ```  

6. **Windows 작업 스케줄러에 작업 등록**  
   - 예약 실행 설정 (예: 매시간 또는 부팅 시 자동 실행)  
   - 작업에 `auto_push.bat` 지정  
   - 권한 문제로 인해 사용자 선택 불가 및 실행 실패 확인  

7. **문제점 인지 및 대응**  
   - 학원 PC의 제한된 사용자 권한으로 작업 스케줄러 자동 실행 불가  
   - 관리자 권한 요청 혹은 개인 PC에서 작업 권장  

8. **수동 작업 임시 운영**  
   - 수동으로 옵시디언 내에서 Git 커밋 및 푸시 수행  

9. **추가 자동화 방안 검토 및 계획**  
   - 클라우드 기반 CI/CD 도구(GitHub Actions 등) 도입  
   - Powershell, Python 등 스크립트 활용하여 환경 맞춤 자동화 시도  

</details>
