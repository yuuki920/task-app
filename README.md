# README

## userテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|integer|null: false|

### Association
- has_many :note
- has_many :day

## noteテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|

### Association
- belogs_to user

## dayテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|
|content|string|
|start_time|datetime|

### Association
- belongs_to :user



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
