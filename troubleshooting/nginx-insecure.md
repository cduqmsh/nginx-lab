* 브라우저 blocked:mixed-content 이슈 발생 시 조치 방안
  
  add_header Content-Security-Policy "upgrade-insecure-requests";

  브라우저에게 HTTP로 요청하는 리소스를 HTTPS로 자동 변경해서 사용하라고 지시하는 CSP(Content Security Policy) 설정

  HTTPS 사이트에서 HTTP 리소스를 불러오면 Mixed Content 문제가 발생할 수 있습니다.

  예를 들어:

    웹페이지 : HTTPS
  
    이미지 : HTTP

    JS/CSS : HTTP

  이 경우 브라우저가 리소드를 차단하거나 경고를 표시할 수 있습니다.

  upgrade-insecure-requests를 사용하면 브라우저가 자동으로 HTTPS로 바꾸어 요청하기 때문에 기존 HTTP 링크가 많을 때 HTTPS 전환 작업을 쉽게 할 수 있습니다.
