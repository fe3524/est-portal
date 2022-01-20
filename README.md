# README

## アプリケーション名
### 【EST-Portal】
・見積書（Estimate）を作成するための入り口（Portal）

## アプリケーション概要
・アカウント作成後、見積を作成しPDFとして出力する

## URL
[EST-Portal - Heroku](https://est-portal.herokuapp.com/)


## テスト用アカウント

## 利用方法

## 目指した課題解決

## 洗い出した要件

## 実装した機能

## 実装予定機能

## データベース設計

### MyPages
| Column         | Type       | Options     |
| ---------------| ---------- | ----------- |
| est_number     | string     | null: false |
| issue_date     | string     | null: false |
| exp_date       | string     | null: false |
| destination    | string     | null: false |
| title          | string     | null: false |
| dl_date        | string     | null: false |
| terms          | text       | null: false |
| initial1       | string     | null: false |
| initial1_vol   | integer    | null: false |
| initial1_price | integer    | null: false |
| ...            |            |             |
| run1           | string     | null: false |
| run1_vol       | integer    | null: false |
| run1_price     | integer    | null: false |
| user_id        | references | null: false |

### Association
- belongs_to :user
- has_many :post_pdfs


## users
| Column              | Type   | Options                        |
| ------------------- | -------| ------------------------------ | 
| user_name           | string | null: false                    |
| department          | string | null: false                    |
| position            | string | null: false                    |
| phone               | string | null: false                    |
| email               | string | null: false unique: true       |
| encrypted_password  | string | null: false                    |

### Association
- has_many :mypages
- has_many :post_pdfs


## post_pdfs
### Association
- belongs_to :mypage
- belong_to :user

[![Image from Gyazo](https://i.gyazo.com/2ae050f01c29c45bc8f3a248691d49d5.png)](https://gyazo.com/2ae050f01c29c45bc8f3a248691d49d5)

***