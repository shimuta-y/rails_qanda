# Q&AサービスのWebアプリ

## 機能

- 新規質問投稿
- 質問編集
- 回答

## メモ

### 前提

- Gitと連携していること（今回はAWSのCloud9を連携済）
- Herokuのアカウントを作成していること
- HerokuCLIをインストールしていること

上記、需要があれば追記します。

### railsとHerokuの関連付け

1. Herokuにログイン
```
heroku login --interactive
```

2. メールアドレスとパスワードを入力

3. Herokuと関連付け
```
heroku create (アプリ名)
```

### デプロイ

1. Herokuを使う楽ちんなメリットでデプロイ
```
git push heroku master
```

以下エラーが出た場合
```
$ git push heroku master

fatal: 'heroku' does not appear to be a git repository
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.
```

以下を実行してからデプロイ
```
git remote add heroku https://git.heroku.com/アプリケーション名.git
```

2. 実行、公開
```
heroku run rails db:migrate
```

3. 公開されたか確認
```
heroku apps:info
```