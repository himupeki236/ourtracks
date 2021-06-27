# OurTracks
リスナー型音楽レビュー投稿アプリ

# 概要・制作背景
ユーザーがアーティストのアルバムごとにレビュー投稿、閲覧できるリスナー型の音楽レビュー投稿アプリです。  
私は音楽が好きでもっと多くの人に音楽の魅力を知ってもらいたいと思ったのがきっかけです。  
魅力を伝えるには、そのアーティストが大好きなリスナーの声が1番響くのではないかと思いました。  
音楽サイトにライターのレビューが掲載されているサイトはあるものの、  
リスナー主体でかつ音楽に特化したレビューサイトはありませんので、制作しました。

## URL
https://ourtracks.herokuapp.com/

## アーティスト画面（ホーム画面）
![ourtracks herokuapp com_](https://user-images.githubusercontent.com/73057075/123547878-78b69100-d79d-11eb-9fad-ad7b6d6409ae.png)

## アルバム画面
![ourtracks herokuapp com_artists_4_works (3)](https://user-images.githubusercontent.com/73057075/123548519-01363100-d7a0-11eb-8d05-ba84f79b4ea5.png)

## レビュー画面
![ourtracks herokuapp com_artists_4_works_124_reviews](https://user-images.githubusercontent.com/73057075/123547400-9a167d80-d79b-11eb-8e9b-80ff7f221497.png)

# 機能一蘭
| 機能 | 概要 |
----|---- 
| ユーザー管理機能 | 新規登録・ログイン・ログアウトが可能 |
| 投稿機能 | レビュー投稿が可能 |
| 投稿表示機能 | レビュー画面で閲覧可能 |
| アーティスト登録機能 | 管理者のみアーティスト登録が可能 |
| アーティスト表示機能 | アーティスト画面で閲覧可能 |
| アーティスト編集機能 | 管理者のみアーティスト編集が可能 |
| アルバム登録機能 | 管理者のみアルバム登録が可能 |
| アルバム表示機能 | アルバム画面で閲覧可能 |
| アルバム編集機能 | 管理者のみアルバム編集が可能 |
| アーティスト名検索機能 | 該当ワードのアーティストの検索が可能 |
| 年代検索機能 | 該当活動期間のアーティスト検索が可能 |
| ジャンル検索機能 | 該当ジャンルのアーティスト検索が可能 |

# 挙動確認用データ

## Basic認証のIDとパスワード
admin  
2222

## 管理者権限（登録・編集可能なユーザー）のメールアドレスとパスワード
uu@gmail.com  
123456q

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





