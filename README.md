# README

## アプリケーション名
### 【EST-Portal】
・見積書（Estimate）を作成するための入り口（Portal）

## アプリケーション概要
・アカウント作成後、見積を作成しPDFとして出力する

## URL
[EST-Portal - Heroku](https://est-portal.herokuapp.com/)


## テスト用アカウント
ID:admin  
PW:2222

## 利用方法
1. トップページ下部より新規登録  
1. 「マイページ」ボタンをクリック  
1. メニューより新規作成

## 目指した課題解決
■業務効率化  
* エクセルで作成する場合、フォーマットの改変が容易で徐々にフォーマットが崩れていく課題がある。
* シンプルなフォーマットに入力するだけで見積情報の登録が可能になり、作成稼働の軽減を見込める。
* 作成した見積はPDFに出力可能。ブラウザでの出力のため、スマホからの作成も可能にすることでロケーションフリーを実現。

## 実装した機能
* ユーザー管理機能（登録・ログイン）
* 見積書作成機能
* 見積書一覧表示機能
* PDF表示機能  
※ 現時点ではベタ打ち静的表示のみ。  
　 今後の実装でテーブルからデータを動的に埋め込む。
* レスポンシブ対応

## 実装予定機能
* 見積詳細表示機能
* 見積編集機能
* 見積削除機能
* 検索機能
* 各バリデーション
* 見積書へのコメント機能
* メール作成機能
* ワークフロー機能
* 責任者アカウント機能
* スケジュール機能
* アラート機能

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