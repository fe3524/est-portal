# README

## MyPages
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