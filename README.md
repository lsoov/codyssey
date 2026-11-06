# 🚀 개발 워크스테이션 구축 미션 보고서

## 1. 프로젝트 개요
Windows 환경에서 Git Bash 및 Docker Desktop을 활용하여 개발 워크스테이션 환경을 구축하고, 터미널 조작, 파일 권한 관리, 커스텀 NGINX 웹 서버 컨테이너 빌드, 포트 매핑, 볼륨 영속성 및 바인드 마운트 검증을 완료한 프로젝트입니다.

## 2. 실행 환경
- OS: Windows 11
- Terminal: Git Bash (WSL 2 / UCRT64)
- Docker Version: Docker 29.9.2
- Git Version: Git Bash

## 3. 수행 항목 체크리스트
- [x] 터미널 기본 조작 (`pwd`, `ls -la`, `mkdir`, `cd`)
- [x] 파일/디렉토리 권한 변경 (`chmod 644`, `chmod 755`)
- [x] Docker 설치 및 기본 점검 (`docker --version`, `hello-world`)
- [x] ubuntu 컨테이너 진입 및 exit 관찰
- [x] Dockerfile 기반 커스텀 NGINX 웹 서버 빌드 및 포트 매핑 (`8080:80`)
- [x] Docker 볼륨 영속성 검증 (`mydata` 볼륨 컨테이너 삭제 전/후 비교)
- [x] 바인드 마운트 검증 (`-v //$(pwd):...` 포트 `8081:80`)

## 4. 트러블슈팅 (2건)
1. Git Bash 느낌표(`!`) 큰따옴표 충돌: `bash: !': event not found` 에러 발생 시 느낌표를 마침표(`.`)로 수정하여 해결.
2. 윈도우 Git Bash 바인드 마운트 경로 인지 오류 & 한글 깨짐: 경로 앞에 `//$(pwd)` 슬래시 추가 및 HTML `<meta charset="UTF-8">` 태그 추가로 해결.
