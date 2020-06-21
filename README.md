# README

## アプリ名
Mytask

## アプリ説明
スケジュールと作業リスト(タスク)の両方を登録・管理することができるアプリ

## 企画背景
自分のタスク管理を行う際に、メモやExcelを使用して管理していました。<br>
タスクを管理する際には必ずスケジュール帳を確認していたので、<br>
スケジュールとタスクの両方を管理・登録ができるアプリがあると便利だと思い企画しました。

## 本番環境
<a href="https://task-app-3.herokuapp.com/">https://task-app-3.herokuapp.com/</a>

- テストアカウント<br>
Eメール：tttt@gmail.com<br>
パスワード：tttttt

## 使い方
- ユーザー登録を行う
- 「New work」ボタンより新規作業(タスク)を登録
- 「新規予定」ボタンより新規スケジュールを登録

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
