# README

# ホーム画面（アーティスト画面）
![ourtracks herokuapp com_](https://user-images.githubusercontent.com/73057075/123547878-78b69100-d79d-11eb-9fad-ad7b6d6409ae.png)

# ディスコグラフィー画面
![ourtracks herokuapp com_artists_4_works (3)](https://user-images.githubusercontent.com/73057075/123548519-01363100-d7a0-11eb-8d05-ba84f79b4ea5.png)

# レビュー画面
![ourtracks herokuapp com_artists_4_works_124_reviews](https://user-images.githubusercontent.com/73057075/123547400-9a167d80-d79b-11eb-8e9b-80ff7f221497.png)



# テーブル設計

## users テーブル

| Column             | Type        | Options                  |
| ------------------ | ----------- | ------------------------ |
| nickname           | string      | null: false              |
| email              | string      | null: false,unique: true |
| encrypted_password | string      | null: false              |

### Association

- has_many :reviews


## artists テーブル

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| name           | string     |                                |
| name_kana      | string     |                                |
| profile        | text       |                                |
| genre          | text       |                                |
| start_year     | integer    |                                |
| prefectures_id | integer    |                                |
| end_year       | integer    |                                |

### Association

- has_many :works
- has_one_attached :image


## works テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| name         | string     |                                |
| release_no   | string     |                                |
| release_date | date       |                                |
| m1           | string     |                                |
| m2           | string     |                                |
| m3           | string     |                                |
| m4           | string     |                                |
| m5           | string     |                                |
| m6           | string     |                                |
| m7           | string     |                                |
| m8           | string     |                                |
| m9           | string     |                                |
| m10          | string     |                                |
| m11          | string     |                                |
| m12          | string     |                                |
| m13          | string     |                                |
| m14          | string     |                                |
| m15          | string     |                                |
| m16          | string     |                                |
| m18          | string     |                                |
| m19          | string     |                                |
| m20          | string     |                                |
| gaiyo        | text       |                                |
| artist       | references | null: false, foreign_key: true |

### Association

- belongs_to :artist
- has_many :reviews
- has_one_attached :photo


## reviews テーブル

| Column           | Type       | Options                          |
| -----------------| -----------| ---------------------------------|
| title            | string     |                                  |
| review           | text       |                                  |
| artist_profile   | string     |                                  |
| artist           | references | null: false, foreign_key: true   |
| work             | references | null: false, foreign_key: true   |
| user             | references | null: false, foreign_key: true   |

### Association

- belongs_to :work
- belongs_to :user


# 挙動確認用データ

## 自身の音楽レビューアプリのURL
https://ourtracks.herokuapp.com/

## Basic認証のIDとパスワード
admin  
2222

## 管理者権限（登録・編集可能なユーザー）のメールアドレスとパスワード
uu@gmail.com  
123456q


