#!/bin/bash

./configure --add-module=../{{ nginx_headers_more_module }} --with-http_realip_module --with-http_sub_module --with-http_gzip_static_module --with-http_stub_status_module  --with-http_ssl_module --with-http_v2_module --with-compat --with-pcre-jit
