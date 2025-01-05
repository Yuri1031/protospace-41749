# テーブル設計
## users テーブル
| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| id                 |        |             |
| name               | string | null: false |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false |
| profile            | text   | null: false |
| occupation         | text   | null: false |
| position           | text   | null: false |
- has_many :prototypes
- has_many :comments


## prototypes テーブル (imageについては、ActiveStorageで実装予定)
| Column      | Type       | Options                        |
| ----------- | ---------- | -----------------------------  |
| id          |            |                                |
| title       | string     | null: false                    |
| catch_copy  | text       | null: false                    |
| concept     | text       | null: false                    |
| user_id     | references | null: false, foreign_key: true |
- has_many :comments
- belong_to :users


## comments テーブル
| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| id           |            |                                |
| comments     | text       | null: false                    |
| prototype_id | references | null: false, foreign_key: true |
| user_id      | references | null: false, foreign_key: true |
- belong_to :users
- belong_to :prototypes
