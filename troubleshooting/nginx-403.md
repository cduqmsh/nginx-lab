* NAS에 연결된 도메인 접속 시 Nginx 403 응답

  https://test.kr/data/event/test/A/2025/04/0215480246176.jpg 접속 시 403 반환

  Nginx location Alias로 설정 된 NAS 경로 권한이 없어 발생 ( NAS 소유 그룹 권한에 Nginx 실행 계정이 접근을 못하는 듯하여 추가 )

          location ~* ^/data/(?<file>.*)$ {
                alias /trans/test/data/fs/$file;
        }

