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
| name               | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

### Association
- has_many :recipes

## recipeテーブル

| Column     | Type      | Options                        |
| ---------- | --------- | ------------------------------ |
| image      | string    | null: false                    |
| dish       | string    | null: false                    |
| persons    | string    | null: false                    |
| material   | string    | null: false                    |
| amount     | string    | null: false                    |
| make_one   | text      | null: false                     |
| make_two   | text      | null: false                     |
| make_three | text      |                                |
| make_four  | text      |                                |
| make_five  | text      |                                |
| user       | references| null: false, foreign_key: true |

### Association
- belongs_to :user