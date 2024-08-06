# **Fix Error**
```
서버 유지관리 창의 시작 시간이 설정되지 않았습니다. 많은 사용자가 접속하는 시간대에 자원 집약적인 작업이 실행될 수 있습니다. 부하가 큰 작업에 의해 사용자가 불편을 겪지 않도록, 유지관리 창의 시작 시간을 사용량이 적은 시간대로 설정하십시오. 더 자세한 사항은 문서 ↗를 참조하십시오.
```

```bash
cd /data/nextcloud/volume/html/config
nano config.php
```
then add 'maintenance_window_start' => 1, bottom of config.php

```
Accessing site insecurely via HTTP. You are strongly advised to set up your server to require HTTPS instead. Without it some important web functionality like "copy to clipboard" or "service workers" will not work! 더 자세한 사항은 문서 ↗를 참조하십시오.
```

Using nginx,treafik,caddy https

