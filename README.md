概要
=====

キャラクターベースではなく、Webベースでpukiwikiをインストールしたかった


使い方
=====

PHPに必要な物をインストールしておく

wwwとかに置く

chmod -R 777 /var/www/

ブラウザで http://localhost/install_pukiwiki/ にアクセス

ユーザ名とパスワードを入力する

多分これで動く

追記
=====

実際は動かない

前提としてOSがUbuntu、ユーザがroot、ドキュメントルートがwwwとなる

シェルスクリプトで内部を操作しているため、そこが脆弱性となるのでこのリポジトリ使っちゃダメ

修正する予定はない
