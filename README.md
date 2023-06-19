# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## usersテーブル
| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nick_name          | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

### Association
- has_many :recipes

## recipeテーブル

| Column     | Type      | Options                        |
| ---------- | --------- | ------------------------------ |
| image      | text      | null: false                    |写真
| dish       | string    | null: false                    |料理名
| persons    | string    | null: false                    |人数
| material   | string    | null: false                    |材料
| amount     | string    | null: false                    |分量
| make_one   | text      | null: false                    |工程１
| make_two   | text      | null: false                    |工程２
| make_three | text      |                                |工程３
| make_four  | text      |                                |工程４
| make_five  | text      |                                |工程５
| user       | references| null: false, foreign_key: true |

### Association
- belongs_to :user