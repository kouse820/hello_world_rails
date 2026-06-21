# Hello World Rails

## 概要

Ruby on Railsを用いて開発したユーザー管理APIです。

ユーザー情報の取得、登録、更新、削除を行うCRUD機能を実装しています。

RailsのMVCアーキテクチャやREST APIの理解を目的として開発しました。

---

## 使用技術

| 技術 | バージョン |
|-------|-------|
| Ruby | 3.1.3 |
| Rails | 7.x |
| MySQL | 8.x |
| RSpec | 3.x |
| Docker | Latest |
| Git / GitHub | - |

---

## 機能一覧

- ユーザー一覧取得
- ユーザー詳細取得
- ユーザー作成
- ユーザー更新
- ユーザー削除
- JSON形式でのレスポンス
- バリデーション
- エラーハンドリング

---

## API一覧

### ユーザー一覧取得

GET

```http
/api/users
```

### ユーザー詳細取得

GET

```http
/api/users/:id
```

### ユーザー作成

POST

```http
/api/users
```

### ユーザー更新

PATCH

```http
/api/users/:id
```

### ユーザー削除

DELETE

```http
/api/users/:id
```

---

## テスト

RSpecを使用してテストを実装しています。

実行方法

```bash
bundle exec rspec
```

---

## セットアップ

```bash
git clone https://github.com/kouse820/hello_world_rails.git

cd hello_world_rails

bundle install

rails db:create
rails db:migrate

rails s
```

---

## 学習した内容

- Rails MVC
- REST API設計
- ActiveRecord
- バリデーション
- RSpecによるテスト
- Git / GitHubによるバージョン管理

---

## 今後の改善

- Swagger導入
- JWT認証
- Docker対応
- CI/CD構築
- テストカバレッジ向上
