# prolog
prolog code in advanced lecture on programing languages

## 使い方
### 実行環境の作成まで
`docker-compose build`でイメージ作成．
`docker-compose up`でコンテナ作成．
`docker-compose exec app /bin/bash`でコンテナの中に入る．

### 実行方法（hello.swiの場合）
`swipl -f hello.swi`で対話モードで実行．

## 対話モード終了方法
`Ctrl+D`もしくは`halt.`で終了．
