### MAGIC-AMIS

This is a faas + frontend-low-code based on magic-api and amis. 

#### Quick Start

```shell
# This is environment vairables
echo "PORT=8080
MYSQL_ROOT_PASSWORD=123456
MYSQL_TZ=Asia/Shanghai
MAGIC_USER=admin
MAGIC_PASSWORD=123456
PMA_ABSOLUTE_URI=http://localhost:8080/mysql/
HTML_PATH=./infrastructure/frontend/dist" > .env
npm i && npm run start
```

#### Magic Api

Access http://localhost:8080/api/web/index.html 

It's a simple faas platform, u can just care about sql or logic.

![](https://cdn.jsdelivr.net/gh/jianzhichun/cdn/img/Snipaste_2021-10-06_20-52-50.png)

**PS:** Plz learn [magic-api](https://www.ssssssss.org/magic-api/) and [sa-token](https://sa-token.dev33.cn/doc/index.html#/) for more information


##### Default DB

Access http://localhost:8080/mysql/

It's a mysql ide for design and operate mysql db.

![](https://cdn.jsdelivr.net/gh/jianzhichun/cdn/img/Snipaste_2021-10-06_20-59-19.png)


#### AMIS

Access http://localhost:8080/editor/

It's a simple frontend-low-code editor, u can design ur app's ui.

![](https://cdn.jsdelivr.net/gh/jianzhichun/cdn/img/Snipaste_2021-10-06_21-03-50.png)

#### AMIS runtime

After design, u can access http://localhost:8080/ to get ur app.

![](https://cdn.jsdelivr.net/gh/jianzhichun/cdn/img/Snipaste_2021-10-06_21-05-33.png)