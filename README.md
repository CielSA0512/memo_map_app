#テーブル設計

## users テーブル

| column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false |
| profile            |  text  | null: false |

### Association

- has_many :posts


## posts テーブル

| column  | Type       | Options     |
| ------- | ---------- | ----------- |
| address | string     | null: false |
| comment | text       | null: false |
| user    | references | null: false, foreign_key: true |

### Association

- belongs_to :user