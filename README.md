# README

## usersテーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| email              | string     | null: false, unique:true       |
| encrypted_password | string     | null: false                    |
| nickname           | string     | null: false                    |

### Association
- has_many :animal_posts
- has_many :comments

## animal_postテーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| title              | string     | null: false                    |
| animal_type_id     | integer    | null: false                    |
| user               | references | null: false  foreign_key: true |


### Association
- belongs_to :users
- has_many :comments

## commentsテーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| user         | references | null: false  foreign_key: true |
| animal_post  | references | null: false  foreign_key: true |
| title        | text       | null: false                    |


### Association
- belongs_to :user
- belongs_to :animal_post